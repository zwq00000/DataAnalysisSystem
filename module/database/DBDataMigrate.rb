#!/usr/bin/env ruby -w
# encoding: GBK
#���ݿ�����Ǩ��ʵʩ��
class DBDataMigrate
  attr_reader :data_hash
  #��ʼ��
  def initialize(db);@db = db end
  #���ָ��������Ϣ
  def get_table_info(main_table_name, join_config = nil)
    if join_config == nil
      @data_hash = @db.query("select * from #{main_table_name}")
    elsif join_config.class.to_s == 'String'
      @data_hash = {}
      #Ϊ�����ӱ���
      hash = @db.query("select * from #{main_table_name}")
      hash.each{|k,v| @data_hash[main_table_name.split("_")[-1] + '_' + k] = v}
      hash = @db.query("select * from #{join_config}")
      hash.each{|k,v| @data_hash[join_config.split("_")[-1] + '_' + k] = v}
    else
      @data_hash = @db.query(get_join_sql(main_table_name, join_config))
    end
  end
  #���ɲ������ݽű�
  def insert_data(table_name, config)
    data_hash = convert_data(config)
    field_names = data_hash.keys
    data_arr = field_names.map{|field_name| data_hash[field_name]}.transpose#ת��
    prefix_str = "INSERT INTO [#{table_name}]([#{field_names.join("] ,[")}]) VALUES("
    istr = ""
    data_arr.each do |data|
      data.map!{|d| d =~ /^CAST\(/ ? d : "'#{d}'"}
      istr << "#{prefix_str}#{data.join(", ")})\n"
    end
    FileWriter.new(Dir.pwd << "/QY/#{table_name}.sql").write_str(istr)
  end
  #����˵���ļ�
  def out_info(table_name, config)
    data_hash = convert_data(config)
    field_names = data_hash.keys
    data_arr = field_names.map{|field_name| data_hash[field_name]}.transpose#ת��
    ostr = ""
    data_arr.each{|data| ostr << "#{data.join("   ")}\n"}
    FileWriter.new(Dir.pwd << "/QY/#{table_name}.sql").write_str(ostr)
  end
  #���ɸ������ݽű�
  def update_data(table_name, config)
    data_hash = convert_data(config)
    field_names = data_hash.keys
    data_arr = field_names.map{|field_name| data_hash[field_name]}.transpose#ת��
    prefix_str = "UPDATE [dbo].[#{table_name}]\nSET "
    istr = ""
    data_arr.each do |data|
      istr << prefix_str
      istr << "[PUBLISHDATE] = #{data[9]},\n[AUDITTIME] = #{data[19]}\n"
      istr << "WHERE ID='#{data[0]}' and WEBID='#{data[2]}'\nGO\n"
    end
    FileWriter.new(Dir.pwd << "/UP/#{table_name}.sql").write_str(istr)
  end
  #����config��hash�������ݽ���ת��
  #��configΪһ��hash������Ϊ����ֶΣ�ֵΪ�����ֶ�(����Ϊnil)�봦��������ɵ�hash��
  def convert_data(config)
    out_hash = {}
    config.each_key do |key|
      data_arr = []
      in_name = config[key][:fn]
      proc = get_proc(config[key][:p])
      if in_name != ''
        @data_hash[in_name].each{|data| data_arr << proc.call(data)}
      else
        i = 0
        @data_hash[@data_hash.keys[0]].each do |data|
          data_arr << proc.call(i)
          i += 1
        end
      end
      out_hash[key] = data_arr
    end
    out_hash
  end
  #�������û�ñ����Ӳ�ѯsql���
  #��һ��Ԫ�������������ڶ���Ԫ��Ϊhash������Ϊ������ֵΪ��������hash
  def get_join_sql(mtname, jc)
    select_sql = "SELECT "
    from_sql = "\nFROM "
    fns = @db.get_table_fields_name(mtname)
    msn = mtname.split("_")[-1]
    select_sql << fns.collect{|fn| "#{msn}.#{fn} as #{msn}_#{fn}"}.join("\n,")
    from_sql << "dbo.#{mtname} AS #{msn}"
    jc.each_key do |tname|
      fns = @db.get_table_fields_name(tname)
      sn = tname.split("_")[-1]
      fns.each{|fn| select_sql << "\n,#{sn}.[#{fn}] as #{sn}_#{fn}"}
      from_sql << " LEFT OUTER JOIN\ndbo.#{tname} AS #{sn} ON "
      j_config = jc[tname]
      from_sql << j_config.map{|k,v| "#{msn}.#{k} = #{sn}.#{v}"}.join(" AND ")
    end
    select_sql << from_sql
  end
  #���ת������
  def get_proc(proc)
    case proc.class.to_s
    when 'String'
      if ConversionMethod.public_methods.include?(proc.to_sym)
        return ConversionMethod.public_method(proc.to_sym) 
      else
        puts "����ת������������#{proc}"
      end
    when 'Proc'
      return proc
    else puts "����ת����������#{proc}"
    end
    Proc.new{|str| str}
  end
end