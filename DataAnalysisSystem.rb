#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

#~ t = Time.now
#~ @work_area = AreaManager.load_work_area("HANRU")
#~ @work_area.export_all
#~ @work_area.save_and_close_work_area
#~ p Time.now - t

#'one' => 1, 
conn = SqlServer.new('(local)\SQLEXPRESS','sa','123@abc')
md = MigrateData.new('CloudEdu',conn)

content_proc = Proc.new do |str|
  str.gsub(/'/, "''")
end
time_proc = Proc.new do |time|
  ":sec, :min, :hour, :mday, :day, :mon, :month, :year, :wday, :yday, :tv_sec, :tv_usec, :usec, :tv_nsec, :nsec,  "
  "CAST('#{time}' AS DateTime)"
  ""
end
time_to_6_proc = Proc.new{|time| time.to_s.split(" ")[0].delete("-")[0,5]}
time_to_8_proc = Proc.new{|time| time.to_s.split(" ")[0].delete("-")}

md.get_table_info(['edu_ele_student'])
config = { ID: { fn: '', p: Proc.new{|i| i}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           JZWH: { fn: '', p: Proc.new{|i| ''}},
           JZWMC: { fn: '', p: Proc.new{|i| ''}},
           SYZKM: { fn: '', p: Proc.new{|i| ''}},
           FWCQ: { fn: '', p: Proc.new{|i| ''}},
           XQH: { fn: '', p: Proc.new{|i| ''}},
           JZWFLM: { fn: '', p: Proc.new{|i| ''}},
           JZWJGM: { fn: '', p: Proc.new{|i| ''}},
           JZWCS: { fn: '', p: Proc.new{|i| ''}},
           JCNY: { fn: '', p: Proc.new{|i| ''}},
           JZWTZZE: { fn: '', p: Proc.new{|i| ''}},
           JFLYM: { fn: '', p: Proc.new{|i| ''}},
           ZJZMJ: { fn: '', p: Proc.new{|i| ''}},
           ZSYMJ: { fn: '', p: Proc.new{|i| ''}},
           KZSFLDM: { fn: '', p: Proc.new{|i| ''}},
           KZSFBZM: { fn: '', p: Proc.new{|i| ''}},
           JZWDZ: { fn: '', p: Proc.new{|i| ''}},
           JZWZKM: { fn: '', p: Proc.new{|i| ''}},
           JZWTP: { fn: '', p: Proc.new{|i| ''}},
           JZWPMT: { fn: '', p: Proc.new{|i| ''}},
           XXDWCCM: { fn: '', p: Proc.new{|i| ''}},
           JZWWZZK: { fn: '', p: Proc.new{|i| ''}},
           GHSPWH: { fn: '', p: Proc.new{|i| ''}},
           ZHFZNL: { fn: '', p: Proc.new{|i| ''}},
           GHSYNX: { fn: '', p: Proc.new{|i| ''}},
           SFYYJBXCS: { fn: '', p: Proc.new{|i| ''}},
           SFKYYYJBNCS: { fn: '', p: Proc.new{|i| ''}},
           CQZH: { fn: '', p: Proc.new{|i| ''}},
           JZWYTM: { fn: '', p: Proc.new{|i| ''}},
           JZWZGD: { fn: '', p: Proc.new{|i| ''}},
           WFJDBM: { fn: '', p: Proc.new{|i| ''}},
           WFJDWH: { fn: '', p: Proc.new{|i| ''}},
           WFJDRQ: { fn: '', p: Proc.new{|i| ''}},
           GNFSM: { fn: '', p: Proc.new{|i| ''}},
           JZWJCXSM: { fn: '', p: Proc.new{|i| ''}},
           JZWPMXSM: { fn: '', p: Proc.new{|i| ''}},
           JZWLBXSM: { fn: '', p: Proc.new{|i| ''}},
           SFYGZZ: { fn: '', p: Proc.new{|i| ''}},
           QL: { fn: '', p: Proc.new{|i| ''}},
           ZJAQGZWCRQ: { fn: '', p: Proc.new{|i| ''}},
           ZJAQGZHYJSYNX: { fn: '', p: Proc.new{|i| ''}},
           ZXLXM: { fn: '', p: Proc.new{|i| ''}},
           ZYZXTZBZMCM: { fn: '', p: Proc.new{|i| ''}},
           WWJZDJM: { fn: '', p: Proc.new{|i| ''}},
           JXJFZYF: { fn: '', p: Proc.new{|i| ''}},
           QZJS: { fn: '', p: Proc.new{|i| ''}},
           QZSYS: { fn: '', p: Proc.new{|i| ''}},
           QZTSS: { fn: '', p: Proc.new{|i| ''}},
           QZWJS: { fn: '', p: Proc.new{|i| ''}},
           QZYYS: { fn: '', p: Proc.new{|i| ''}},
           QZTYHDS: { fn: '', p: Proc.new{|i| ''}},
           QZQTJFYF: { fn: '', p: Proc.new{|i| ''}},
           SHYF: { fn: '', p: Proc.new{|i| ''}},
           QZXSSS: { fn: '', p: Proc.new{|i| ''}},
           QZST: { fn: '', p: Proc.new{|i| ''}},
           QZCS: { fn: '', p: Proc.new{|i| ''}},
           QZGLF: { fn: '', p: Proc.new{|i| ''}},
           QZYS: { fn: '', p: Proc.new{|i| ''}},
           QZJGSS: { fn: '', p: Proc.new{|i| ''}},
           QZQTSHYF: { fn: '', p: Proc.new{|i| ''}},
           XZBGYF: { fn: '', p: Proc.new{|i| ''}},
           QZJSBGS: { fn: '', p: Proc.new{|i| ''}},
           QZWSBJS: { fn: '', p: Proc.new{|i| ''}},
           QZQTXZBGYF: { fn: '', p: Proc.new{|i| ''}},
           QTYF: { fn: '', p: Proc.new{|i| ''}},
           }
md.convert_data('EDU_ZZXS_01_01_XSXX',config)

conn.close
