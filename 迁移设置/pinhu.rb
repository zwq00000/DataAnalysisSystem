conn = SqlServer.new('(local)')
md = MigrateData.new('CloudEdu',conn)
#网站会员
md.get_table_info(['edu_wzgl_associator'])
config = { SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           LOGINNAME: { fn: 'UserName', p: Proc.new{|str| str}},
           LOGINPWD: { fn: 'PassWord', p: Proc.new{|str| str}},
           REALNAME: { fn: 'Name', p: Proc.new{|str| str}},
           EMAIL: { fn: 'Email', p: Proc.new{|str| str}},
           MOBILE: { fn: 'Station', p: Proc.new{|str| str}},
           QQ: { fn: '', p: Proc.new{|i| ''}},
           AUDITSTATU: { fn: '', p: Proc.new{|i| ''}},
           AUDITOR: { fn: '', p: Proc.new{|i| ''}},
           AUDITORNAME: { fn: '', p: Proc.new{|i| ''}},}
md.insert_data('EDU_WZXT_VIP',config)
#网站文章
md.get_table_info(['edu_wzgl_sparticle'])
config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           TYPENAME: { fn: '', p: Proc.new{|i| ''}},
           LMID: { fn: 'TypeID', p: Proc.new{|str| str}},
           TITLE: { fn: 'Title', p: Proc.new{|str| str}},
           PUBLISHERNAME: { fn: 'AuthorID', p: Proc.new{|str| str}},
           AUTHOR: { fn: 'Author', p: Proc.new{|str| str}},
           AUTHORDEPART: { fn: 'Authordepart', p: Proc.new{|str| str}},
           PUBLISHDATE: { fn: 'PublishDate', p: 'datetime'},
           CONTENT: { fn: 'Content', p: 'content'},
           URL: { fn: 'Url', p: Proc.new{|str| str}},
           IMAGEURL: { fn: 'ImageUrl', p: Proc.new{|str| str}},
           ATTACHMENTNAME: { fn: 'AttachmentName', p: Proc.new{|str| str}},
           ATTACHMENT: { fn: 'Attachment', p: Proc.new{|str| str}},
           CHICKNUB: { fn: 'ChickNub', p: Proc.new{|str| str}},
           AUDITSTATU: { fn: 'Auditing', p: Proc.new{|str| str}},
           AUDITOR: { fn: 'Auditer', p: Proc.new{|str| str}},
           AUDITORNAME: { fn: '', p: Proc.new{|i| ''}},
           AUDITTIME: { fn: 'AuditerTime', p: 'datetime'},
           REMARK: { fn: 'Remark', p: Proc.new{|str| str}},
           SUMMARY: { fn: 'Summary', p: Proc.new{|str| str}},
           DISPLAYTYPE: { fn: 'DisplayType', p: Proc.new{|str| str}},
           OPENFLAG: { fn: '', p: Proc.new{|i| '1'}},
           LLQX: { fn: '', p: Proc.new{|i| '0'}},
           }
md.insert_data('EDU_WZXT_MHXT_WZWZ',config)
#发布权限
md.get_table_info(['edu_wzgl_sparticlepower'])
config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           LOGINNAME: { fn: 'TeacherID', p: Proc.new{|str| str}},
           LMLIST: { fn: 'ArticleLst', p: Proc.new{|str| str}},
           LMNAMELIST: { fn: 'ArticleNameLst', p: Proc.new{|str| str}},
           }
md.insert_data('EDU_WZXT_MHXT_FBQX',config)
#网站栏目
md.get_table_info(['edu_wzgl_sparticletype'])
config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           LMSHOWSTYLE: { fn: 'ImageShow', p: Proc.new{|str| str}},
           NAME: { fn: 'Name', p: Proc.new{|str| str}},
           URL: { fn: 'Url', p: Proc.new{|str| str}},
           IMAGEURL: { fn: 'ImageUrl', p: Proc.new{|str| str}},
           DEPTH: { fn: 'Depth', p: Proc.new{|str| str}},
           PID: { fn: 'SuperiorID', p: Proc.new{|str| str}},
           LISTSHOWSTYLE: { fn: '', p: Proc.new{|i| '0'}},
           ORDERTYPE: { fn: '', p: Proc.new{|i| '0'}},
           SHOWNUMBER: { fn: '', p: Proc.new{|i| '0'}},
           OPENFLAG: { fn: '', p: Proc.new{|i| '1'}},
           LLQX: { fn: '', p: Proc.new{|i| '0'}},
           }
md.insert_data('EDU_WZXT_MHXT_WZLM',config)
#友情链接
md.get_table_info(['edu_wzgl_splink'])
config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           TITLE: { fn: 'Title', p: Proc.new{|str| str}},
           TYPEID: { fn: 'Typeid', p: Proc.new{|str| str}},
           IMAGEURL: { fn: 'ImageUrl', p: Proc.new{|str| str}},
           URL: { fn: 'Url', p: Proc.new{|str| str}},
           }
md.insert_data('EDU_WZXT_MHXT_YQLJ',config)
#友情链接类型
md.get_table_info(['edu_wzgl_splinktype'])
config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           NAME: { fn: 'Name', p: Proc.new{|str| str}},
           SHOWSTYLE: { fn: 'Typeid', p: Proc.new{|str| str}},
           }
md.insert_data('EDU_WZXT_MHXT_YQLJLX',config)
#教师表
md.get_table_info(['edu_ele_teacher'])
config = { ID: { fn: 'ID', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           GH: { fn: 'ID', p: Proc.new{|s| s}},
           XM: { fn: 'Name', p: Proc.new{|s| s}},
           YWXM: { fn: '', p: Proc.new{|i| ''}},
           XMPY: { fn: '', p: Proc.new{|i| ''}},
           CYM: { fn: '', p: Proc.new{|i| ''}},
           SFZJLXM: { fn: '', p: Proc.new{|i| '1'}},
           SFZJH: { fn: 'IDcard', p: Proc.new{|s| s}},
           CSRQ: { fn: 'Birthday', p: 'time_to_8'},
           XBM: { fn: 'XbID', p: Proc.new{|s| s == '0' ? '1' : '0'}},
           MZM: { fn: '', p: Proc.new{|i| ''}},
           XXM: { fn: '', p: Proc.new{|i| ''}},
           JKZKM: { fn: '', p: Proc.new{|i| ''}},
           HYZTM: { fn: '', p: Proc.new{|i| ''}},
           ZZMMM: { fn: '', p: Proc.new{|i| ''}},
           GATQWM: { fn: '', p: Proc.new{|i| ''}},
           JG: { fn: '', p: Proc.new{|i| ''}},
           GJDQM: { fn: '', p: Proc.new{|i| ''}},
           CSDXZQHM: { fn: '', p: Proc.new{|i| ''}},
           XYZJM: { fn: '', p: Proc.new{|i| ''}},
           JZGHKSZDXZQHM: { fn: '', p: Proc.new{|i| ''}},
           HKLBM: { fn: '', p: Proc.new{|i| ''}},
           DQZZ: { fn: 'NowAdd', p: Proc.new{|s| s}},
           DQZZYZBM: { fn: '', p: Proc.new{|i| ''}},
           CJGZNY: { fn: '', p: Proc.new{|i| ''}},
           CJNY: { fn: '', p: Proc.new{|i| ''}},
           LXNY: { fn: 'JoinTime', p: 'time_to_6'},
           BZLBM: { fn: '', p: Proc.new{|i| ''}},
           JZGLBM: { fn: '', p: Proc.new{|i| ''}},
           GWLBM: { fn: '', p: Proc.new{|i| ''}},
           SFJZJS: { fn: '', p: Proc.new{|i| ''}},
           SFSSXJS: { fn: '', p: Proc.new{|i| ''}},
           ZP: { fn: 'Imageurl', p: Proc.new{|s| s}},
           DQZTM: { fn: '', p: Proc.new{|i| ''}},
           YDDH: { fn: 'Mobile', p: Proc.new{|s| s}},
           GDDH: { fn: 'OfficeTel', p: Proc.new{|s| s}},
           TXDZYZBM: { fn: '', p: Proc.new{|i| ''}},
           TXDZ: { fn: '', p: Proc.new{|i| ''}},
           DZXX: { fn: 'Email', p: Proc.new{|s| s}},
           WLDZ: { fn: '', p: Proc.new{|i| ''}},
           JSTXH: { fn: '', p: Proc.new{|i| ''}},
           }
md.insert_data('EDU_ZZJG_01_01_JZGJBSJ',config)
#学生表
md.get_table_info(['edu_ele_student'])
config = { ID: { fn: 'ID', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           XH: { fn: 'ID', p: Proc.new{|s| s}},
           XM: { fn: 'Name', p: Proc.new{|s| s}},
           YWXM: { fn: '', p: Proc.new{|i| ''}},
           XMPY: { fn: '', p: Proc.new{|i| ''}},
           CYM: { fn: '', p: Proc.new{|i| ''}},
           SFZJLXM: { fn: '', p: Proc.new{|i| '1'}},
           SFZJH: { fn: 'IDcard', p: Proc.new{|s| s}},
           XBM: { fn: 'XbID', p: Proc.new{|s| s == '0' ? '1' : '0'}},
           XXM: { fn: '', p: Proc.new{|i| ''}},
           CSRQ: { fn: 'Birthday', p: 'time_to_8'},
           CSDM: { fn: '', p: Proc.new{|i| ''}},
           JG: { fn: '', p: Proc.new{|i| ''}},
           MZM: { fn: '', p: Proc.new{|i| '01'}},
           HYZKM: { fn: '', p: Proc.new{|i| ''}},
           XYZJM: { fn: '', p: Proc.new{|i| ''}},
           GATQWM: { fn: '', p: Proc.new{|i| ''}},
           JKZKM: { fn: '', p: Proc.new{|i| ''}},
           ZZMMM: { fn: '', p: Proc.new{|i| ''}},
           HKSZDXZQHM: { fn: '', p: Proc.new{|i| ''}},
           HKLBM: { fn: '', p: Proc.new{|i| ''}},
           SFSLDRK: { fn: '', p: Proc.new{|i| ''}},
           GJDQM: { fn: '', p: Proc.new{|i| ''}},
           TC: { fn: '', p: Proc.new{|i| ''}},
           XSLXDH: { fn: 'Mobile', p: Proc.new{|s| s}},
           WLDZ: { fn: '', p: Proc.new{|i| ''}},
           JSTXH: { fn: '', p: Proc.new{|i| ''}},
           DZXX: { fn: '', p: Proc.new{|i| ''}},
           ZP: { fn: 'Imageurl', p: Proc.new{|s| s}},
           }
md.insert_data('EDU_ZZXS_01_01_XSXX',config)
#学籍

#房屋
md.get_table_info(['edu_ssgl_apartment'])
config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           JZWH: { fn: '', p: Proc.new{|i| '0'}},
           JZWMC: { fn: 'Name', p: Proc.new{|s| s}},
           SYZKM: { fn: '', p: Proc.new{|i| '0'}},
           FWCQ: { fn: '', p: Proc.new{|i| '0'}},
           XQH: { fn: '', p: Proc.new{|i| '0'}},
           JZWFLM: { fn: '', p: Proc.new{|i| '0'}},
           JZWJGM: { fn: '', p: Proc.new{|i| '0'}},
           JZWCS: { fn: 'Floors', p: Proc.new{|s| s}},
           JCNY: { fn: '', p: Proc.new{|i| '0'}},
           JZWTZZE: { fn: '', p: Proc.new{|i| '0'}},
           JFLYM: { fn: '', p: Proc.new{|i| '0'}},
           ZJZMJ: { fn: '', p: Proc.new{|i| '0'}},
           ZSYMJ: { fn: '', p: Proc.new{|i| '0'}},
           KZSFLDM: { fn: '', p: Proc.new{|i| '0'}},
           KZSFBZM: { fn: '', p: Proc.new{|i| '0'}},
           JZWDZ: { fn: 'Adress', p: Proc.new{|s| s}},
           JZWZKM: { fn: '', p: Proc.new{|i| '0'}},
           JZWTP: { fn: '', p: Proc.new{|i| '0'}},
           JZWPMT: { fn: '', p: Proc.new{|i| '0'}},
           XXDWCCM: { fn: '', p: Proc.new{|i| '0'}},
           JZWWZZK: { fn: '', p: Proc.new{|i| '0'}},
           GHSPWH: { fn: '', p: Proc.new{|i| '0'}},
           ZHFZNL: { fn: '', p: Proc.new{|i| '0'}},
           GHSYNX: { fn: '', p: Proc.new{|i| '0'}},
           SFYYJBXCS: { fn: '', p: Proc.new{|i| '0'}},
           SFKYYYJBNCS: { fn: '', p: Proc.new{|i| '0'}},
           CQZH: { fn: '', p: Proc.new{|i| '0'}},
           JZWYTM: { fn: '', p: Proc.new{|i| '21'}},
           JZWZGD: { fn: '', p: Proc.new{|i| '0'}},
           WFJDBM: { fn: '', p: Proc.new{|i| '0'}},
           WFJDWH: { fn: '', p: Proc.new{|i| '0'}},
           WFJDRQ: { fn: '', p: Proc.new{|i| '0'}},
           GNFSM: { fn: '', p: Proc.new{|i| '0'}},
           JZWJCXSM: { fn: '', p: Proc.new{|i| '0'}},
           JZWPMXSM: { fn: '', p: Proc.new{|i| '0'}},
           JZWLBXSM: { fn: '', p: Proc.new{|i| '0'}},
           SFYGZZ: { fn: '', p: Proc.new{|i| '0'}},
           QL: { fn: '', p: Proc.new{|i| '0'}},
           ZJAQGZWCRQ: { fn: '', p: Proc.new{|i| '0'}},
           ZJAQGZHYJSYNX: { fn: '', p: Proc.new{|i| '0'}},
           ZXLXM: { fn: '', p: Proc.new{|i| '0'}},
           ZYZXTZBZMCM: { fn: '', p: Proc.new{|i| '0'}},
           WWJZDJM: { fn: '', p: Proc.new{|i| '0'}},
           JXJFZYF: { fn: '', p: Proc.new{|i| '0'}},
           QZJS: { fn: '', p: Proc.new{|i| '0'}},
           QZSYS: { fn: '', p: Proc.new{|i| '0'}},
           QZTSS: { fn: '', p: Proc.new{|i| '0'}},
           QZWJS: { fn: '', p: Proc.new{|i| '0'}},
           QZYYS: { fn: '', p: Proc.new{|i| '0'}},
           QZTYHDS: { fn: '', p: Proc.new{|i| '0'}},
           QZQTJFYF: { fn: '', p: Proc.new{|i| '0'}},
           SHYF: { fn: '', p: Proc.new{|i| '0'}},
           QZXSSS: { fn: 'FloDorCount', p: Proc.new{|s| s}},
           QZST: { fn: '', p: Proc.new{|i| '0'}},
           QZCS: { fn: '', p: Proc.new{|i| '0'}},
           QZGLF: { fn: '', p: Proc.new{|i| '0'}},
           QZYS: { fn: '', p: Proc.new{|i| '0'}},
           QZJGSS: { fn: '', p: Proc.new{|i| '0'}},
           QZQTSHYF: { fn: '', p: Proc.new{|i| '0'}},
           XZBGYF: { fn: '', p: Proc.new{|i| '0'}},
           QZJSBGS: { fn: '', p: Proc.new{|i| '0'}},
           QZWSBJS: { fn: '', p: Proc.new{|i| '0'}},
           QZQTXZBGYF: { fn: '', p: Proc.new{|i| '0'}},
           QTYF: { fn: '', p: Proc.new{|i| '0'}},
           }
md.insert_data('EDU_ZZFC_02_01_JZWJBSJ', config)
#宿舍
md.get_table_info(['edu_ssgl_dormitory'])
config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           SSLID: { fn: 'ApartmentID', p: Proc.new{|s| s}},
           SSLBM: { fn: 'Name', p: Proc.new{|s| s}},
           FJBM: { fn: '', p: Proc.new{|i| '0'}},
           RZXB: { fn: '', p: Proc.new{|i| '0'}},
           SFKY: { fn: '', p: Proc.new{|i| '0'}},
           KZRS: { fn: 'MaxBeds', p: Proc.new{|s| s}},
           WLDK: { fn: '', p: Proc.new{|i| '0'}},
           AZDSJ: { fn: '', p: Proc.new{|i| '0'}},
           DHDK: { fn: '', p: Proc.new{|i| '0'}},
           DHHM: { fn: '', p: Proc.new{|i| '0'}},
           SBDS: { fn: '', p: Proc.new{|i| '0'}},
           DBDS: { fn: '', p: Proc.new{|i| '0'}},
           SSBZ: { fn: '', p: Proc.new{|i| '0'}},
           SZLZ: { fn: 'FloorID', p: Proc.new{|s| s}},
           SSM: { fn: 'Name', p: Proc.new{|s| s}},
           }
md.insert_data('EDU_ZZFC_08_01_XSSS', config)
#床位
md.get_table_info(['edu_ssgl_bed'])
config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           SSLID: { fn: 'AID', p: Proc.new{|s| s}},
           SSID: { fn: 'DID', p: Proc.new{|s| s}},
           CWM: { fn: 'Name', p: Proc.new{|s| s}},
           BZ: { fn: 'Reamrk', p: Proc.new{|s| s}},
           SFRZ: { fn: '', p: Proc.new{|i| ''}},
           }
md.insert_data('EDU_ZZFC_08_A01_SSCW', config)
#住宿记录
md.get_table_info(['edu_ssgl_manage'])
config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           YHID: { fn: 'UserID', p: Proc.new{|s| s}},
           SSLID: { fn: 'ApartmentID', p: Proc.new{|s| s}},
           SSID: { fn: 'DormitoryID', p: Proc.new{|s| s}},
           CWID: { fn: 'BedID', p: Proc.new{|s| s}},
           YHXM: { fn: 'UserName', p: Proc.new{|s| s}},
           RZRLX: { fn: '', p: Proc.new{|i| '0'}},
           RZSJ: { fn: 'InDate', p: 'datetime'},
           SHZT: { fn: '', p: Proc.new{|i| '0'}},
           SHSJ: { fn: '', p: Proc.new{|i| '0'}},
           SHR: { fn: '', p: Proc.new{|i| '0'}},
           }
md.insert_data('EDU_ZZFC_08_A02_YHZSJL', config)
#班级
md.get_table_info('edu_ele_class','edu_ele_class_upgrade')
config = { XZBDM: { fn: 'upgrade_ID', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           ZYXXID: { fn: 'class_MajorID', p: Proc.new{|s| s}},
           ZZNJID: { fn: 'upgrade_GradeID', p: Proc.new{|s| s}},
           XZBMC: { fn: 'class_Name', p: Proc.new{|s| s}},
           JBNY: { fn: '', p: Proc.new{|i| ''}},
           BZRGH: { fn: '', p: Proc.new{|i| ''}},
           JSBH: { fn: '', p: Proc.new{|i| ''}},
           NANSRS: { fn: '', p: Proc.new{|i| '0'}},
           NVSRS: { fn: '', p: Proc.new{|i| '0'}},
           ZRS: { fn: 'upgrade_StuCount', p: Proc.new{|s| s}},
           BZXH: { fn: '', p: Proc.new{|i| ''}},
           JXJH: { fn: '', p: Proc.new{|i| ''}},
           JGH: { fn: '', p: Proc.new{|i| ''}},
           XQDM: { fn: '', p: Proc.new{|i| ''}},
           }
md.insert_data('EDU_ZZJX_02_02_ZZBJ',config)
#年级
md.get_table_info(['edu_ele_grade'])
config = { NJDM: { fn: 'ID', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           NJMC: { fn: 'Name', p: Proc.new{|s| s}},
           SSNF: { fn: '', p: Proc.new{|i| ''}},
           NJZT: { fn: '', p: Proc.new{|i| ''}},
           }
md.insert_data('EDU_ZZJX_02_01_ZZNJ',config)
#专业
md.get_table_info(['edu_ele_major'])
config = { ZYBH: { fn: 'ID', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           ZYDM: { fn: '', p: Proc.new{|i| ''}},
           ZYMC: { fn: 'Name', p: Proc.new{|s| s}},
           ZYYWMC: { fn: '', p: Proc.new{|i| ''}},
           XZ: { fn: '', p: Proc.new{|i| ''}},
           ZYFXMC: { fn: '', p: Proc.new{|i| ''}},
           ZYJC: { fn: '', p: Proc.new{|i| ''}},
           JLNY: { fn: '', p: Proc.new{|i| ''}},
           ZYJSS: { fn: '', p: Proc.new{|i| '0'}},
           KSJGH: { fn: '', p: Proc.new{|i| '000000'}},
           ZXF: { fn: '', p: Proc.new{|i| ''}},
           SSZYML: { fn: '', p: Proc.new{|i| ''}},
           ZYLB: { fn: '', p: Proc.new{|i| ''}},
           }
md.insert_data('EDU_ZZJX_01_01_ZYXX',config)
#学籍
md.get_table_info('edu_ele_student', {'edu_ele_class' => {'ClassID' => 'ID'}})
config = { XSXXID: { fn: 'student_ID', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           ZYXXID: { fn: 'class_MajorID', p: Proc.new{|s| s}},
           ZZBJID: { fn: 'student_ClassID', p: Proc.new{|s| s}},
           ZZNJID: { fn: 'class_GradeID', p: Proc.new{|s| s}},
           RXNY: { fn: '', p: Proc.new{|i| ''}},
           XSLBM: { fn: '', p: Proc.new{|i| ''}},
           XZ: { fn: '', p: Proc.new{|i| ''}},
           ZYM: { fn: '', p: Proc.new{|i| ''}},
           XSDQZTM: { fn: '', p: Proc.new{|i| ''}},
           }
md.insert_data('EDU_ZZXS_07_01_XJSJ',config)


conn.close
