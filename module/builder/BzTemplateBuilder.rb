#!/usr/bin/env ruby -w
# encoding: GBK
#模板数据生成器
class BzTemplateBuilder
  attr_reader :area#待生成的元数据
  attr_reader :template_str#生成的模板语句
  attr_reader :ignore_name_space_arr#不需要生成模板的命名空间
  attr_accessor :tab#缩进
  #初始化
  def initialize(tab = "    ",log = Log.new)
    @area = nil
    @file_hash = nil
    @tab = Indent.new(tab)
    @app_name = $t_app_name || ' '
    @directory_name = $t_dir_name || ' '
    @ignore_name_space_arr = %w(EDU_GB EDU_JY EDU_ZJ EDU_ZZ)
    @used_tn_arr = %w(EDU_GB_CYZK EDU_GB_HKLB EDU_GB_HYZZ EDU_GB_JKZKYWSZ EDU_GB_JTGX EDU_GB_JYPXJG EDU_GB_LWGDXXDASTFL 
    EDU_GB_RDXB EDU_GB_SJGGHDQMC EDU_GB_WXBMZJ EDU_GB_XL EDU_GB_YZMCEZM EDU_GB_ZGGMZMCDLMZMPXF EDU_GB_ZGYZ 
    EDU_GB_ZHRMGHGXZQH EDU_GB_ZJXY EDU_GB_ZWJBDM EDU_GB_ZYFL EDU_GB_ZYJSZW EDU_GB_ZZMM EDU_JY_BXLX EDU_JY_BZLB 
    EDU_JY_CQ EDU_JY_FJFLB EDU_JY_FSFS EDU_JY_GATQW EDU_JY_GNFS EDU_JY_GWFZFS EDU_JY_GWLB EDU_JY_GWZY EDU_JY_JFLY 
    EDU_JY_JJCD EDU_JY_JLZZZJLY EDU_JY_JTLB EDU_JY_JXJLX EDU_JY_JZGDQZT EDU_JY_JZGLB EDU_JY_JZWFL EDU_JY_JZWJCXS 
    EDU_JY_JZWJG EDU_JY_JZWLBXS EDU_JY_JZWPMXS EDU_JY_JZWYT EDU_JY_JZWZK EDU_JY_KCSX EDU_JY_KNCD EDU_JY_KNYY 
    EDU_JY_KSFS EDU_JY_KSXS EDU_JY_KSXZ EDU_JY_KZSFBZ EDU_JY_KZSFLD EDU_JY_RKJS EDU_JY_RKXD EDU_JY_SFBZ EDU_JY_SFZJLX 
    EDU_JY_SKFS EDU_JY_SSMZSYJXMS EDU_JY_SYZK EDU_JY_SZDCXLX EDU_JY_SZDQJJSX EDU_JY_WJFL EDU_JY_WWJZDJ EDU_JY_XJYDLB 
    EDU_JY_XJYDYY EDU_JY_XQ EDU_JY_XSDQZT EDU_JY_XSLB EDU_JY_XX EDU_JY_XXBB EDU_JY_XXDWCC EDU_JY_XXJYJGJBZ EDU_JY_YBLB 
    EDU_JY_YWDABGQX EDU_JY_ZCZK EDU_JY_ZXXBJLX EDU_JY_ZXXBZLB EDU_JY_ZXXKC EDU_JY_ZXXKCDJ EDU_JY_ZYZXTZBZMC EDU_ZJ_BYSLX 
    EDU_ZJ_HJXZ EDU_ZJ_JBLX EDU_ZJ_KPZT EDU_ZJ_TKLX EDU_ZJ_ZJZY EDU_ZJ_ZYML EDU_ZZ_JKKM EDU_ZZ_KCFL EDU_ZZ_PGQK EDU_ZZ_ZXJFL)
    @log = log
  end
  #生成模板数据
  def build(area)
    @area = area
    @file_hash = {}
    @area.each do |name_space|
      build_name_space_template(name_space) if @ignore_name_space_arr.include?(name_space.name)
    end
    MDDoc.new("bztemplate",@area.name,@file_hash)
  end
  #生成指定命名空间的模板
  def build_name_space_template(name_space)
    name_space.each do |table|
      next unless @used_tn_arr.include?(table.name)
      @tab.to_0
      @file_hash["Controllers/#{table.library_name.upcase}/#{table.lname}Controller.cs"] = make_controller(table)
      @file_hash["Views/#{table.library_name.upcase}/#{table.lname}/Index.cshtml"] = make_index(table)
      @file_hash["Views/#{table.library_name.upcase}/#{table.lname}/Create.cshtml"] = make_table_info1(table,'添加')
      @file_hash["Views/#{table.library_name.upcase}/#{table.lname}/Edit.cshtml"] = make_table_info2(table,'编辑')
      #@file_hash["Views/#{table.library_name.upcase}/#{table.lname}/Details.cshtml"] = make_details(table)
      #@file_hash["Views/#{table.library_name.upcase}/#{table.lname}/Importdata.cshtml"] = make_importdata(table)
    end
  end
  def make_controller(table)
    str = ''
    str << "using System;\nusing System.Collections.Generic;\nusing System.Linq;\nusing System.Web;\n"
    str << "using System.Web.Mvc;\nusing System.Data;\nusing System.Data.Entity;\nusing System.Collections;\n"
    str << "using HanRuEdu.LDAL;\nusing System.Text;\nusing System.Data.Entity.Validation;\nusing HanRuEdu.#{@app_name}.Common;\n\n"
    str << "namespace HanRuEdu.#{@app_name}.Controllers.#{@app_name}\n"
    str << "{\n#{@tab.l}public class #{table.name.split("_")[-1]}Controller : #{@app_name}Controller\n#{@tab.t}"
    str << make_controller_index_jsonstr(table)
    str << make_controller_InitViewBag(table)
    str << make_controller_index(table)
    str << make_controller_create(table)
    str << make_controller_edit(table)
    #str << make_controller_details(table)
    #str << make_controller_delete(table)
    str << make_controller_multi_delete(table)
    #str << make_controller_importdata(table)
    #str << make_controller_get_max_ID(table) unless table.has_identity?
    str << "#{@tab.s}}\n}"
  end
  def get_mc_field_name(table)
    table.each_field{|field| return field.name if field.name == 'MC'}
    table.each_field{|field| return field.name if field.name.include?('MC')}
    return table.get_first_field_name
  end
  def get_mc_field(table)
    table.each_field{|field| return field if field.name == 'MC'}
    table.each_field{|field| return field if field.name.include?('MC')}
    return nil
  end
  def make_controller_index_jsonstr(table)
    str = %({\n#{@tab.l}public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")\n#{@tab.t})
    str << "{\n#{@tab.l}IQueryable<#{table.view_name}> model = #{table.db_name}.#{table.view_name}.Where(e => true);\n#{@tab.t}if (!String.IsNullOrEmpty(searchkey))\n#{@tab.t}"
    str << "{\n#{@tab.l}model = model.Where(e => e.#{get_mc_field_name(table)}.Contains(searchkey));\n"
    str << "#{@tab.s}}\n#{@tab.t}model = DataSorting(model, sort, order);\n#{@tab.t}"
    str << %(return \"{\\"total\\":" + model.Count() + ",\\"rows\\":" + HanRuEdu.Utils.JsonHelp.JsonSerialize(model.Skip(page * rows - rows).Take(rows).ToList()) + "}";\n)
    str << "#{@tab.s}}\n\n"
  end
  def make_controller_InitViewBag(table)
    str = "#{@tab.t}public void InitViewBag()\n#{@tab.t}"
    str << "{\n#{@tab.l}"
    table.each_field{|field| str << get_selLst(field)}
    str << "\n#{@tab.s}}\n\n"
  end
  def make_controller_index(table)
    str = "#{@tab.t}public ActionResult Index()\n#{@tab.t}"
    str << "{\n#{@tab.l}return View(new #{table.name}());\n"
    str << "#{@tab.s}}\n\n"
  end
  def make_controller_create(table)
    str = "#{@tab.t}public ActionResult Create()\n#{@tab.t}"
    str << "{\n#{@tab.l}InitViewBag();\n#{@tab.t}\n#{@tab.t}"
    str << "return View(new #{table.name}());\n#{@tab.s}}\n\n"
    str << "#{@tab.t}[HttpPost]\n#{@tab.t}public ActionResult Create(#{table.name} #{table.lname_dc})\n#{@tab.t}"
    str << "{\n#{@tab.l}InitViewBag();\n#{@tab.t}try\n#{@tab.t}"
    mc_field = get_mc_field(table)
    str << "{\n#{@tab.l}if (#{table.lname_dc}.#{mc_field.name} == \"\") throw new Exception(\"#{mc_field.explanation}不能为空！\");\n"
    #str << "if (ModelState.IsValid)\n#{@tab.t}{\n#{@tab.long}"
    #str << "#{table.lname_dc}.ID = GetMax_#{table.lname}_ID();\n#{@tab.t}" unless table.has_identity?
    #str << "#{table.lname_dc}.SCHOOLID = CurUser.ele01Usr.SCHOOLID;\n"
    table.each_field do |field|
      str << "#{@tab.t}//#{table.lname_dc}.#{field.name} = ;//#{field.explanation}#{get_relation(field)}\n"
    end
    str << "#{@tab.t}#{table.db_name}.#{table.name}.Add(#{table.lname_dc});\n#{@tab.t}"
    str << "#{table.db_name}.SaveChanges();\n"
    str << "#{@tab.t}return RedirectToAction(\"Index\");\n"
    #str << "#{@tab.s}}\n#{@tab.t}else\n#{@tab.t}"
    #str << "{\n#{@tab.l}return View(#{table.lname_dc});\n#{@tab.s}}\n"
    str << "#{@tab.s}}\n#{@tab.t}catch (DbEntityValidationException dbEx)\n#{@tab.t}"
    str << "{\n#{@tab.l}SetTopCenter(get_DbException_Message(dbEx));\n#{@tab.t}return View(#{table.lname_dc});\n"
    str << "#{@tab.s}}\n#{@tab.t}catch (Exception e)\n#{@tab.t}"
    str << "{\n#{@tab.l}SetTopCenter(e.Message);\n#{@tab.t}return View(#{table.lname_dc});\n"
    str << "#{@tab.s}}\n#{@tab.s}}\n\n"
  end
  def make_controller_edit(table)
    str = "#{@tab.t}public ActionResult Edit(string id)\n#{@tab.t}"
    str << "{\n#{@tab.l}InitViewBag();\n#{@tab.t}\n#{@tab.t}"
    str << "#{table.name} #{table.lname_dc} = #{table.db_name}.#{table.name}.Single(e => e.#{table.get_first_field_name} == id);\n#{@tab.t}"
    str << "return View(#{table.lname_dc});\n#{@tab.s}}\n\n"
    str << "#{@tab.t}[HttpPost]\n#{@tab.t}public ActionResult Edit(#{table.name} #{table.lname_dc})\n#{@tab.t}"
    str << "{\n#{@tab.l}InitViewBag();\n#{@tab.t}try\n#{@tab.t}"
    mc_field = get_mc_field(table)
    str << "{\n#{@tab.l}if (#{table.lname_dc}.#{mc_field.name} == \"\") throw new Exception(\"#{mc_field.explanation}不能为空！\");\n"
    #str << "if (ModelState.IsValid)\n#{@tab.t}"
    str << "#{@tab.t}#{table.name} #{table.lname_dc}_model = #{table.db_name}.#{table.name}.FirstOrDefault(e => e.#{table.get_first_field_name} == #{table.lname_dc}.#{table.get_first_field_name}"
    str << ");\n#{@tab.t}//if (#{table.lname_dc}_model == null) throw new Exception(\"记录不存在\");\n"
    table.each_field do |field|
      next if %w(DM).include? field.name
      str << "#{@tab.t}#{table.lname_dc}_model.#{field.name} = #{table.lname_dc}.#{field.name};//#{field.explanation}#{get_relation(field)}\n"
    end
    str << "#{@tab.t}\n#{@tab.t}#{table.db_name}.Entry(#{table.lname_dc}_model).State = EntityState.Modified;\n"
    str << "#{@tab.t}#{table.db_name}.SaveChanges();\n"
    str << "#{@tab.t}return RedirectToAction(\"Index\");\n"
    str << "#{@tab.s}}\n#{@tab.t}catch (DbEntityValidationException dbEx)\n#{@tab.t}"
    str << "{\n#{@tab.l}SetTopCenter(get_DbException_Message(dbEx));\n#{@tab.t}return View(#{table.lname_dc});\n"
    str << "#{@tab.s}}\n#{@tab.t}catch (Exception e)\n#{@tab.t}"
    str << "{\n#{@tab.l}SetTopCenter(e.Message);\n#{@tab.t}return View(#{table.lname_dc});\n"
    str << "#{@tab.s}}\n#{@tab.s}}\n\n"
  end
  def make_controller_details(table)
    str = "#{@tab.t}public ActionResult Details(string id)\n#{@tab.t}"
    str << "{\n#{@tab.l}"
    str << "#{table.view_name} view = #{table.db_name}.#{table.view_name}.Single(e => e.#{table.get_first_field_name} == id);\n#{@tab.t}"
    str << "return View(view);\n#{@tab.s}}\n\n"
  end
  def make_controller_multi_delete(table)
    str = "#{@tab.t}public String Delete(String idLst)\n#{@tab.t}"
    str << "{\n#{@tab.l}try\n#{@tab.t}"
    str << "{\n#{@tab.l}var dmLst = idLst.Split(LDALConstant.DefSpear).ToList();\n"
    str << "#{@tab.t}foreach (var item in #{table.db_name}.#{table.name}.Where(e => dmLst.Contains(e.DM)))\n#{@tab.t}"
    str << "{\n#{@tab.l}#{table.db_name}.#{table.name}.Remove(item);\n"
    str << "#{@tab.s}}\n#{@tab.t}#{table.db_name}.SaveChanges();\n#{@tab.t}return \"删除成功！\";\n"
    str << "#{@tab.s}}\n#{@tab.t}catch (DbEntityValidationException dbEx)\n#{@tab.t}"
    str << "{\n#{@tab.l}return \"删除出错！\" + dbEx.Message;\n"
    str << "#{@tab.s}}\n#{@tab.t}catch (Exception e)\n#{@tab.t}"
    str << "{\n#{@tab.l}return \"删除出错！\" + e.Message;\n"
    str << "#{@tab.s}}\n"
    str << "#{@tab.s}}\n\n"
  end
  def make_controller_importdata(table)
    str = "#{@tab.t}public ActionResult ImportData()\n#{@tab.t}"
    str << "{\n#{@tab.l}#{table.name} model = new #{table.name}();\n#{@tab.t}"
    str << "return View(model);\n"
    str << "#{@tab.s}}\n\n"
    str << "#{@tab.t}[HttpPost]\n#{@tab.t}public ActionResult ImportData(#{table.name} #{table.lname_dc})\n#{@tab.t}"
    str << "{\n#{@tab.l}int sucss = 0; int rowid = 0;\n#{@tab.t}string msg = \"\";\n#{@tab.t}try\n#{@tab.t}"
    str << "{\n#{@tab.l}HttpPostedFileBase file = Request.Files[\"xmlfile\"];\n#{@tab.t}if (file == null || file.ContentLength == 0)\n#{@tab.t}"
    str << "{\n#{@tab.l}SetTopCenter(string.Format(\"请使用不为空的xml电子文档\"));\n#{@tab.t}return View();\n"
    str << "#{@tab.s}}\n#{@tab.t}string filename = Request.Files[\"xmlfile\"].FileName;\n#{@tab.t}"
    str << "string IsXls = System.IO.Path.GetExtension(filename).ToString().ToLower();\n#{@tab.t}"
    str << "string name = System.IO.Path.GetFileName(filename).ToString().ToLower();\n#{@tab.t}"
    str << %(if (IsXls != ".xml" && IsXls != ".xls" && IsXls != ".xlsx")\n#{@tab.t})
    str << "{\n#{@tab.l}SetTopCenter(string.Format(\"请使用不为空的xml电子文档\"));\n#{@tab.t}return View();\n"
    str << "#{@tab.s}}\n#{@tab.t}string path = CurUser.SchoolConf.ServTmpPath;\n#{@tab.t}"
    str << "if (!System.IO.Directory.Exists(path))\n#{@tab.t}"
    str << "{\n#{@tab.l}System.IO.Directory.CreateDirectory(path);\n"
    str << "#{@tab.s}}\n#{@tab.t}string savePath = path + name;\n#{@tab.t}Request.Files[0].SaveAs(savePath);\n#{@tab.t}"
    str << "List<Hashtable> lst = XmlHelper.xmlhelper.get_column_data(savePath, 2, \"\");\n\n#{@tab.t}"
    str << %(msg += "<span>数据正确性检测。。。。。。</span><br>";\n#{@tab.t})
    str << "bool flag = true;\n#{@tab.t}"
    str << "List<#{table.name}> CheckList = new List<#{table.name}>();\n#{@tab.t}"
    str << "foreach (Hashtable ht in lst)\n#{@tab.t}"
    str << "{\n#{@tab.l}rowid++;\n#{@tab.t}#{table.name} model = new #{table.name}();\n#{@tab.t}"
    str << "\n#{@tab.t}"
    table.each_field do |field|
      next if %w(ID SCHOOLID).include? field.name
      str << "if (ht.Contains(\"#{field.display_name}\"))\n#{@tab.t}"
      str << "{\n#{@tab.l}"
      if field.relation
        rt = field.relation.table
        if field.relation.table.bz_library_name
          str << "model.#{field.name} = #{rt.bz_library_name}LDAL.Get#{rt.select_method_name}DM(ht[\"#{field.display_name}\"].ToString());\n#{@tab.t}"
        else
          str << "String value = ht[\"#{field.display_name}\"].ToString().Trim();\n#{@tab.t}"
          str << "//#{rt.name} #{rt.lname_dc} = #{rt.db_name}.#{rt.name}.FirstOrDefault(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID && e == value);\n#{@tab.t}"
          str << "//if (#{rt.lname_dc} != null) model.#{field.name} = #{rt.lname_dc}.ID;\n#{@tab.t}"
        end
        str << "\n#{@tab.t}"
        case field.split_type[0]
        when 'int';str << "//if (model.#{field.name} == 0)\n#{@tab.t}"
        when 'String';str << "//if (string.IsNullOrEmpty(model.#{field.name}))\n#{@tab.t}"
        else @log << "TemplateBuilder: refield type wrong: #{field.split_type[0]}"
        end
        str << %(//{ flag = false; msg += "<span style=\\"color:red;\\">第" + rowid + "行 ：未找到该#{field.display_name}！</span><br>"; }\n)
      else
        field_type = field.split_type[0]
        case field_type
        when 'int','decimal','float'
          str << "#{field_type} value = 0;\n#{@tab.t}if (#{field_type}.TryParse(ht[\"#{field.display_name}\"].ToString(), out value))\n#{@tab.t}"
          str << "{ model.#{field.name} = value; }\n#{@tab.t}"
          str << %(else { flag = false; msg += "<span style=\\"color:red;\\">第" + rowid + "行 ：#{field.display_name}有误！</span><br>"; }\n)
        when 'DateTime'
          str << "String value = ht[\"#{field.display_name}\"].ToString().Trim();\n#{@tab.t}"
          str << "if (value != \"\") { model.#{field.name} = Convert.ToDateTime(value); }"
        when 'String'
          str << "model.#{field.name} = ht[\"#{field.display_name}\"].ToString().Trim();\n#{@tab.t}"
          str << "if (string.IsNullOrEmpty(model.#{field.name}))\n#{@tab.t}"
          str << %({ flag = false; msg += "<span style=\\"color:red;\\">第" + rowid + "行 ：#{field.display_name}不能为空！</span><br>"; }\n)
        else @log << "TemplateBuilder: type wrong: #{field.split_type[0]}"
        end
      end
      str << "#{@tab.s}}\n#{@tab.t}"
      str << %(else { flag = false; msg += "<span style=\\"color:red;\\">第" + rowid + "行 ：#{field.display_name}不能为空！</span><br>"; }\n\n#{@tab.t})
    end
    str << "CheckList.Add(model);\n"
    str << "#{@tab.s}}\n#{@tab.t}if (flag)\n#{@tab.t}"
    str << %({\n#{@tab.l}msg += "<span>数据正确性检测通过！</span><br>";\n#{@tab.t})
    str << "foreach (var item in CheckList)\n#{@tab.t}{\n#{@tab.l}"
    table.each_field do |field|
      if field.name == "ID" && !table.has_identity?
        str << "item.ID = GetMax_#{table.lname}_ID();//#{field.explanation}\n#{@tab.t}"
      elsif field.name == "SCHOOLID"
        str << "item.SCHOOLID = CurUser.ele01Usr.SCHOOLID;//#{field.explanation}\n#{@tab.t}"
      else
        str << "//item.#{field.name} = #{table.lname_dc}.#{field.name};//#{field.explanation}\n#{@tab.t}"
      end
    end
    str << "#{table.db_name}.#{table.name}.Add(item);\n#{@tab.t}sucss++;\n"
    str << %(#{@tab.s}}\n#{@tab.t}#{table.db_name}.SaveChanges();\n#{@tab.t}msg += "<span >成功导入" + sucss + "条记录！</span><br>";\n)
    str << "#{@tab.s}}\n#{@tab.t}else\n#{@tab.t}"
    str << %({\n#{@tab.l}msg += "<span style=\\"color:red;\\">请先修改数据再上传。。。。。。</span><br>";\n)
    str << "#{@tab.s}}\n#{@tab.s}}\n#{@tab.t}"
    str << "catch (DbEntityValidationException e)\n#{@tab.t}"
    str << "{\n#{@tab.l}string msgstr = \"\";\n#{@tab.t}"
    str << "foreach (var em in e.EntityValidationErrors)\n#{@tab.t}"
    str << "{\n#{@tab.l}foreach (var m in em.ValidationErrors)\n#{@tab.t}"
    str << %({\n#{@tab.l}msgstr += m.ErrorMessage + ";";\n)
    str << "#{@tab.s}}\n#{@tab.s}}\n#{@tab.t}"
    str << %(msg += "<span style=\\"color:red;\\">第" + (sucss == 0 ? rowid + 1 : sucss) + "行，导入失败，原因：" + msgstr + "</span><br>";\n)
    str << "#{@tab.s}}\n#{@tab.t}catch (Exception e)\n#{@tab.t}"
    str << %({\n#{@tab.l}msg += "<span style=\\"color:red;\\">第" + (sucss == 0 ? rowid + 1 : sucss) + "行，导入失败，原因：" + GetExceptionErrMsg(e) + "</span><br>";\n)
    str << "#{@tab.s}}\n#{@tab.t}ViewBag.msg = msg;\n#{@tab.t}"
    str << "return View(#{table.lname_dc});\n"
    str << "#{@tab.s}}\n\n"
  end
  def make_controller_get_max_ID(table)
    str = "#{@tab.t}private static int Max_#{table.lname}_ID = 0;\n#{@tab.t}"
    str << "private static object sync#{table.lname}IDLock = new object();\n#{@tab.t}"
    str << "//获取#{table.explanation}最大ID\n#{@tab.t}"
    str << "public int GetMax_#{table.lname}_ID()\n#{@tab.t}"
    str << "{\n#{@tab.l}int maxId = 0;\n#{@tab.t}lock (sync#{table.lname}IDLock)\n#{@tab.t}"
    str << "{\n#{@tab.l}if (Max_#{table.lname}_ID == 0)\n#{@tab.t}"
    str << "{\n#{@tab.l}#{table.name} #{table.lname_dc} = #{table.db_name}.#{table.name}"
    str << ".FirstOrDefault();\n#{@tab.t}"
    str << "if (#{table.lname_dc} == null)\n#{@tab.t}"
    str << "{\n#{@tab.l}Max_#{table.lname}_ID = 1;\n"
    str << "#{@tab.s}}\n#{@tab.t}"
    str << "else\n#{@tab.t}"
    str << "{\n#{@tab.l}Max_#{table.lname}_ID = #{table.db_name}.#{table.name}"
    str << ".Max(e => e.ID) + 1;\n"
    str << "#{@tab.s}}\n"
    str << "#{@tab.s}}\n#{@tab.t}"
    str << "else\n#{@tab.t}"
    str << "{\n#{@tab.l}Max_#{table.lname}_ID++;\n"
    str << "#{@tab.s}}\n#{@tab.t}"
    str << "maxId = Max_#{table.lname}_ID;\n"
    str << "#{@tab.s}}\n#{@tab.t}"
    str << "return maxId;\n"
    str << "#{@tab.s}}\n\n"
  end
  def make_index(table)
    index_str = "@model HanRuEdu.LDAL.#{table.name}\n"
    index_str << %(<table id="dg" title="  " class="easyui-datagrid" style="width:auto;height:520px"\n)
    index_str << "            data-options=\"singleSelect:true,collapsible:true,  url:'@Url.Content(\"~/#{@directory_name}/#{table.lname_dc}/index_jsonstr\")',\n"
    index_str << "            toolbar:'#toolbar', remoteSort:true,pagination:true, rownumbers:true, fitColumns:true,multiSort:false\" >\n"
    index_str << "    <thead>\n        <tr>\n            <!--<th data-options=\"field:'ck',checkbox:true\"></th>-->\n"
    table.each_field do |field|
      next if %w(ID SCHOOLID).include? field.name
      index_str << %(            <th field="#{field.name}" width="50" #{'formatter="formatDatebox" ' if field.type == 'datetime'}#{'sortable="true"' if field.type != 'text'}>#{field.explanation}</th>\n)
    end
    path_pre_str = "#{@directory_name}/#{table.lname_dc}"
    index_str << "        </tr>\n    </thead>\n</table>\n"
    index_str << %(@{\n    ViewData["index_create"] = Url.Content("~/#{path_pre_str}/create");\n)
    index_str << %(    ViewData["index_edit"] = Url.Content("~/#{path_pre_str}/edit");\n)
    index_str << %(    //ViewData["index_detail"] = Url.Content("~/#{path_pre_str}/details");\n)
    index_str << %(    //ViewData["index_del"] = Url.Content("~/#{path_pre_str}/delete");\n)
    index_str << %(    ViewData["index_multi_del"] = Url.Content("~/#{path_pre_str}/delete");\n)
    index_str << %(    ViewData["index_id_name"] = "DM";\n)
    index_str << %(    //ViewData["index_outdata"] = Url.Content("~/#{path_pre_str}/OutExcel");\n)
    index_str << %(    //ViewData["index_indata_newpage"] = Url.Content("~/#{path_pre_str}/ImportData");\n}\n)
    index_str << %(@Html.Partial("~/views/shared/indexToolBarPage.cshtml", this.ViewData)\n)
  end
  def make_table_info1(table,title)
    info_str = %(@model HanRuEdu.LDAL.#{table.name}\n@using (Html.BeginForm())\n{\n)
    info_str << %(    <center>  <h1 ><span style="font-size:smaller;">#{title}</span></h1></center>\n\n)
    info_str << %(    <table class="admintable">\n\n)
    table.each_field do |field|
      next if %w(ID SCHOOLID).include? field.name
      info_str << "        <tr>\n            <th>#{field.explanation}</th>\n            <td>\n"
      if field.relation && field.relation.table.bz_library_name
        info_str << "                @Html.DropDownListFor(m => m.#{field.name}, ViewBag.#{field.relation.table.select_method_name}Lst as SelectList)\n"
      elsif field.type == 'datetime'
        info_str << "                @Html.TextBoxFor(m => m.#{field.name}, new { @class = \"easyui-datetimebox\", style = \"width:150px; \" })\n"
      elsif field.type == 'text'
        info_str << "                @Html.TextAreaFor(m => m.#{field.name}, new { @class = \"easyui-validatebox\", style = \"width:800px; height:60px\" })\n"
        info_str << %(                @*@Html.MYeWebEditorFor(m=>m.#{field.name}, null, new FckConfig { Height = "350", Width = "850", Skin = FckSkin.Default, ToolbarSet = FckToolbarSet.Basic }, Url.Content("~/") )*@\n)
      else
        info_str << "                @Html.TextBoxFor(m => m.#{field.name}, new { @class = \"easyui-validatebox\", style = \"width:150px; \" })\n"
      end
      info_str << "                @Html.ValidationMessageFor(m => m.#{field.name})\n            </td>\n        </tr>\n\n"
    end
    info_str << %(    </table>\n    <br />\n    ViewData["ce_cancel"] = Url.Content("~/#{@directory_name}/#{table.lname_dc}/index");\n)
    info_str << %(    @Html.Partial("~/views/shared/CreateEditToolBarPage.cshtml", this.ViewData)\n}\n)
  end
  def make_table_info2(table,title)
    info_str = %(@model HanRuEdu.LDAL.#{table.name}\n@using (Html.BeginForm())\n{\n)
    info_str << %(    <center>  <h1 ><span style="font-size:smaller;">#{title}</span></h1></center>\n\n)
    info_str << %(    <table class="admintable">\n\n)
    table.each_field do |field|
      next if %w(ID SCHOOLID).include? field.name
      info_str << "        <tr>\n            <th>#{field.explanation}</th>\n            <td>\n"
      if field.name == 'DM'
        info_str << "                @Html.DisplayFor(m => m.#{field.name})\n"
        info_str << "                @Html.HiddenFor(m => m.#{field.name})\n"
      elsif field.relation && field.relation.table.bz_library_name
        info_str << "                @Html.DropDownListFor(m => m.#{field.name}, ViewBag.#{field.relation.table.select_method_name}Lst as SelectList)\n"
      elsif field.type == 'datetime'
        info_str << "                @Html.TextBoxFor(m => m.#{field.name}, new { @class = \"easyui-datetimebox\", style = \"width:150px; \" })\n"
      elsif field.type == 'text'
        info_str << "                @Html.TextAreaFor(m => m.#{field.name}, new { @class = \"easyui-validatebox\", style = \"width:800px; height:60px\" })\n"
        info_str << %(                @*@Html.MYeWebEditorFor(m=>m.#{field.name}, null, new FckConfig { Height = "350", Width = "850", Skin = FckSkin.Default, ToolbarSet = FckToolbarSet.Basic }, Url.Content("~/") )*@\n)
      else
        info_str << "                @Html.TextBoxFor(m => m.#{field.name}, new { @class = \"easyui-validatebox\", style = \"width:150px; \" })\n"
      end
      if field.name != 'DM'
        info_str << "                @Html.ValidationMessageFor(m => m.#{field.name})\n"
      end
      info_str << "            </td>\n        </tr>\n\n"
    end
    info_str << %(    </table>\n    <br />\n    ViewData["ce_cancel"] = Url.Content("~/#{@directory_name}/#{table.lname_dc}/index");\n)
    info_str << %(    @Html.Partial("~/views/shared/CreateEditToolBarPage.cshtml", this.ViewData)\n}\n)
  end
  def make_details(table)
    str = "@model HanRuEdu.LDAL.#{table.view_name}\n"
    str << %(<center>  <h1 ><span style="font-size:smaller;">#{table.explanation}信息</span></h1></center>\n)
    str << %(<table class="admintable">\n\n)
    table.each_field do |field|
      str << "    <tr>\n        <th>#{field.display_name}</th>\n        <td>@Html.DisplayFor(m => m.#{field.name})</td>\n    </tr>\n\n"
    end
    str << "</table>\n"
  end
  def make_importdata(table)
    str = "@model HanRuEdu.LDAL.#{table.name}\n"
    str << %(@using (Html.BeginForm("ImportData", "#{table.lname}", FormMethod.Post, new { enctype = "multipart/form-data" }))\n{ \n)
    str << %(    <div style="padding: 10px;"><br />\n)
    str << %(        <p style="text-align: center">\n)
    str << %(            <input id="xmlfile" name="xmlfile" type="file" />\n)
    str << %(            <input id="Submit1" type="submit" value="上传" />　\n)
    str << %(            <a href="@Url.Content("~/#{@directory_name}/#{table.lname_dc}/index")" class="easyui-linkbutton" iconCls="icon-back" >返回列表</a>\n)
    str << "        </p>\n        <hr />\n"
    str << "        <p>\n"
    str << %(            <a href="@Url.Content("~/Content/NowDownload/Excels/#{table.explanation}.xls")">模板下载</a><br />\n)
    str << %(            <span style="color: red">导入小贴士：<br />\n)
    str << "                1.本导入只支持XML格式的文件。若用Excel 2010打开模板，请先右键点击模板->属性->解除锁定，即可解决【文件已损坏】问题。<br />\n"
    str << "                2.选择EXCEL的【文件另存为。。。】菜单，在保存类型处选择“XML表格”类型，可保存为XML格式文件。<br />\n"
    str << "                3.建议用户直接在导入模板上填充要导入的数据，即可上传导入。<br />\n"
    str << "            </span>\n"
    str << "        </p>\n"
    str << %(        <p style="padding: 30px;">\n)
    str << "           @Html.Raw(ViewBag.msg)\n        </p>\n    </div>\n}\n"
  end
  #获得一个字段的值列表
  def get_selLst(field)
    lname = field.relation.table.bz_library_name if field.relation
    if lname
      mname = field.relation.table.select_method_name
      result = "ViewBag.#{mname}Lst = #{lname}LDAL.Get#{mname}SelLst();\n#{@tab.t}"
    end
    result ||= ''
  end
  def get_relation(field)
    field.relation ? '   ' << field.relation.table.explanation : ''
  end
end
  #~ used_bz_table_name = []
  #~ ns_name_arr = %w(EDU_GB EDU_JY EDU_ZJ EDU_ZZ)
  #~ work_area.area.each do |name_space|
    #~ name_space.each do |table|
      #~ table.get_relation.each do |field|
        #~ rt = field.relation.table
        #~ used_bz_table_name << rt.name if ns_name_arr.include?(rt.name_space_name)
      #~ end
    #~ end
  #~ end
  #~ used_bz_table_name.uniq!.sort
  
  #~ id = 1
  #~ hash = {'gb' => 1,'jy' => 2,'zz' => 3,'zj' => 4}
  #~ work_area.area.each do |name_space|
    #~ name_space.each do |table|
      #~ if used_tn_arr.include?(table.name)
        #~ tn_arr = table.name.split('_').map{|s| s.downcase}
        #~ exp = table.explanation
        #~ exp.chop! if exp =~ /表$/
        #~ puts "INSERT INTO [HANRUEDU].[dbo].[EDU_SYS_19_BZSJ] ([ID],[BZSJMC],[SJLXID],[GLLJ]) VALUES (#{id},'#{exp}',#{hash[tn_arr[1]]},'/#{tn_arr[1]}/#{tn_arr[2]}/index')\nGO"
        #~ id += 1
      #~ end
    #~ end
  #~ end