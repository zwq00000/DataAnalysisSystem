#!/usr/bin/env ruby -w
# encoding: GBK
#工作区类
class MDWork_Area
  attr_reader :area#元数据域
  @@data_path = "#{$root}/data"
  @@temporary_path = "#{$root}/data/temporary"
  @@backup_path = "#{$root}/data/backup"
  @@enter_path = "#{$root}/enter"
  @@backup_max_num = 5
  #初始化
  def initialize(area)
    @area = area
    @doc = nil
    @area.is_valid?
    save_to_temporary
    backup_work_area
  end
  #输出所有
  def export_all
    #~ fs_config = {'@sql'=>'G:/同步/sql',
                 #~ '@view'=>'G:/同步/view',
                 #~ 'HANRU_bz'=>'G:/同步',
                 #~ 'HANRU_yw'=>'G:/同步',
                 #~ 'HANRU_view'=>'G:/同步'}
    #~ MDDoc.set_fsc(fs_config)
    export_sql
    export_sql(false)
    export_view
    export_view(false)
    export_model
    export_template
    export_tableinfo
    export_migrate_config
    #MDDoc.set_fsc(nil)
    #SVN.commit('G:\瀚孺\HanruEdu')
  end
  #固化元数据并关闭工作环境
  def save_and_close_work_area
    save_data
    DirManager.clear_dir("#{$root}/data/temporary")#清空临时文件夹
    @area = nil
  end
  #固化数据
  def save_data
    reset_doc
    folder_path = "#{@@data_path}/#{@area.name}_area/"
    DirManager.clear_dir(folder_path)#清空文件夹
    @doc.hash_out(folder_path)
  end
  #将文档存入临时区
  def save_to_temporary
    reset_doc if @doc == nil
    DirManager.clear_dir(@@temporary_path)#清空文件夹
    @doc.hash_out("#{@@temporary_path}/")
  end
  #备份文档
  def backup_work_area
    reset_doc if @doc == nil
    @doc.hash_out("#{@@backup_path}/#{@area.name}_area/#{Time.now.strftime("%y%m%d %H%M%S")}/")
    clean_backup
  end
  #清理指定元数据的备份区
  def clean_backup
    dir_path_arr = DirManager.get_dir_path("#{@@backup_path}/#{@area.name}_area/")
    if dir_path_arr.size > @@backup_max_num
      dir_path_arr.sort! {|a, b| File::ctime(a) <=> File::ctime(b)}
      dir_path_arr.pop(@@backup_max_num)
      dir_path_arr.each do |dir_path|
        DirManager.remove_dir(dir_path)
        #puts "MDWork_Area: 备份#{dir_path}已删除"
      end
    end
  end
  #显示本数据域与数据库间的差异
  def show_db_diff(db);compare_db(db).show_diff end
  #显示本数据域与数据库间的差异(cmd版)
  def show_db_diff_cmd(db);compare_db(db).show_cmd_diff end
  #使用本数据域更新数据库表结构
  def update_db(db)
    #将表数据与最新版本进行比较，记录差异处
    diff = compare_db(db)
    if diff.has_diff?
      #显示差异
      diff.show_diff
      #使用脚本将差异处更新
      diff.db_transform(db) 
      #再次检查数据库中表结构是否与最新版本相同
      diff = compare_db(db)
      if diff.has_diff?
        #报错
        puts '数据库差异更新并未成功！'
        #显示未修正差异
        diff.show_diff
      else
        #运行最新版本的视图
        view_str = ViewBuilder.new(true).build(@area).get_data_str
        db.execute(view_str)
        puts '数据库更新成功'
      end
    else
      puts '数据库表结构与工作区一致，不需更新'
    end
  end
  #与指定数据库中的表结构进行比较
  def compare_db(db);MDDiffer.new.compare_area(db.get_db_area,@area) end
  #输出Sql脚本
  def export_sql(build_folder = true, need_delete = true, need_data = false)
    builder = SqlBuilder.new(need_delete,need_data)
    builder.need_data_name_space_arr = %w(EDU_GB EDU_JY EDU_ZJ EDU_ZZ EDU_SYS)
    if build_folder
      builder.build_hash(@area).export
    else
      builder.build_bz(@area).export
      builder.build_yw(@area).export
    end
  end
  #输出创建视图语句
  def export_view(build_folder = true, need_delete = true)
    builder = ViewBuilder.new(need_delete)
    build_folder ? builder.build_hash(@area).export : builder.build(@area).export
  end
  #输出实体验证数据
  def export_model;ModelBuilder.new.build(@area).export end
  #输出模板数据
  def export_template;TemplateBuilder.new.build(@area).export end
  #输出表信息
  def export_tableinfo;TableinfoBuilder.new.build(@area).export end
  #输出自定义信息
  def auto_export(name,build_proc);Builder.build(name,@area,build_proc).export end
  #输出测试数据
  def export_testdata(config);TestdataBuilder.new.build_sd(@area,config).export end
  #输出数据迁移脚本
  def export_migrate_config
    build_proc = Proc.new do |str|
      export = {}
      area.each do |name_space|
        name_space.each do |table|
          ostr = ""
          table.field_area.each do |field|
            ostr << "           #{field.name}: { fn: '', p: Proc.new{|i| ''}},\n"
          end
          export["#{table.library_name.upcase}/#{table.name}.txt"] = ostr
        end
      end
      export
    end
    auto_export('migrate_config',build_proc)
  end
  private#重新生成元数据文档
  def reset_doc;@doc = DafBuilder.new.build(@area) end
end
