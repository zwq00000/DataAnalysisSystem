
--学生文化素质评价结果表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_56_A22_XSWHSZPJJG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[BPXSID]--被评学生ID
      ,a.[PJXMID]--评价项目ID
      ,a.[PJLX]--评价类型
      ,a.[DFLX]--打分类型
      ,a.[DFNR]--打分内容
      ,a.[DJYHID]--登记用户ID
      ,a.[DJSJ]--登记时间
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,d.XH as d_XSXX_XH--学生基本数据子类表 学号
      ,d.XM as d_XSXX_XM--学生基本数据子类表 姓名
      ,d.YWXM as d_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,d.XMPY as d_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,d.CYM as d_XSXX_CYM--学生基本数据子类表 曾用名
      ,d.XBM as d_XSXX_XBM--学生基本数据子类表 性别码
      ,[db].MC as d_XSXX_XBM_MC--人的性别代码 名称
      ,d.CSRQ as d_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,d.CSDM as d_XSXX_CSDM--学生基本数据子类表 出生地码
      ,[dc].MC as d_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,d.JG as d_XSXX_JG--学生基本数据子类表 籍贯
      ,d.MZM as d_XSXX_MZM--学生基本数据子类表 民族码
      ,[dd].MZMC as d_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[dd].ZMDM as d_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,d.GJDQM as d_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,[de].GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[de].EZMDM as d_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[de].SZMDM as d_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,d.SFZJLXM as d_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,[df].MC as d_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,d.SFZJH as d_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,d.HYZKM as d_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,[dg].MC as d_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,d.GATQWM as d_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,[dh].MC as d_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[dh].SM as d_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,d.ZZMMM as d_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,[di].MC as d_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[di].JC as d_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,d.JKZKM as d_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,[dj].MC as d_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[dj].SM as d_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,d.XYZJM as d_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,[dk].MC as d_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,d.XXM as d_XSXX_XXM--学生基本数据子类表 血型码
      ,[dl].MC as d_XSXX_XXM_MC--血型代码表 名称
      ,[dl].JC as d_XSXX_XXM_JC--血型代码表 简称
      ,d.ZP as d_XSXX_ZP--学生基本数据子类表 照片
      ,d.SFZJYXQ as d_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,d.DSZYBZ as d_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,[dm].MC as d_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,d.RXNY as d_XSXX_RXNY--学生基本数据子类表 入学年月
      ,d.NJ as d_XSXX_NJ--学生基本数据子类表 年级
      ,d.BH as d_XSXX_BH--学生基本数据子类表 班号
      ,d.XSLBM as d_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,[dn].MC as d_XSXX_XSLBM_MC--学生类别代码表 名称
      ,[dn].SM as d_XSXX_XSLBM_SM--学生类别代码表 说明
      ,d.XZZ as d_XSXX_XZZ--学生基本数据子类表 现住址
      ,d.HKSZD as d_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,d.HKXZM as d_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,[do].MC as d_XSXX_HKXZM_MC--户口类别代码 名称
      ,d.SFLDRK as d_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,[dp].MC as d_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,d.TC as d_XSXX_TC--学生基本数据子类表 特长
      ,d.LXDH as d_XSXX_LXDH--学生基本数据子类表 联系电话
      ,d.TXDZ as d_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,d.YZBM as d_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,d.DZXX as d_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,d.ZYDZ as d_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,d.XJH as d_XSXX_XJH--学生基本数据子类表 学籍号
      ,d.XSDQZTM as d_XSXX_XSDQZTM--学生基本数据子类表 学生当前状态码
      ,[dq].MC as d_XSXX_XSDQZTM_MC--学生当前状态代码表 名称
      ,[dq].SM as d_XSXX_XSDQZTM_SM--学生当前状态代码表 说明
      ,e.SCHOOLID as e_XSWHSZPJXM_SCHOOLID--学生文化素质评价项目表 学校
      ,e.KCMC as e_XSWHSZPJXM_KCMC--学生文化素质评价项目表 课程名称
      ,e.PJXM as e_XSWHSZPJXM_PJXM--学生文化素质评价项目表 评价项目
      ,e.CJDFFSID as e_XSWHSZPJXM_CJDFFSID--学生文化素质评价项目表 成绩打分方式ID
      ,e.PJDFFSID as e_XSWHSZPJXM_PJDFFSID--学生文化素质评价项目表 评价打分方式ID
      ,e.PLSX as e_XSWHSZPJXM_PLSX--学生文化素质评价项目表 排列顺序
      ,e.ZT as e_XSWHSZPJXM_ZT--学生文化素质评价项目表 状态
      ,f.SCHOOLID as f_USER_SCHOOLID--应用系统用户表 学校ID
      ,f.APPID as f_USER_APPID--应用系统用户表 应用ID
      ,f.STATUS as f_USER_STATUS--应用系统用户表 用户状态
      ,f.USERTYPE as f_USER_USERTYPE--应用系统用户表 用户类别
      ,f.USERID as f_USER_USERID--应用系统用户表 用户ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--应用系统用户表 用户角色
      ,f.XM as f_USER_XM--应用系统用户表 姓名
      ,f.XB as f_USER_XB--应用系统用户表 性别
      ,f.QQ as f_USER_QQ--应用系统用户表 QQ
      ,f.DZYJ as f_USER_DZYJ--应用系统用户表 电子邮件
      ,f.LXDH as f_USER_LXDH--应用系统用户表 联系电话
      ,f.ZJDLSJ as f_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,f.DLCGCS as f_USER_DLCGCS--应用系统用户表 登录成功次数
      ,f.YHCJSJ as f_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,f.YHRY as f_USER_YHRY--应用系统用户表 用户荣誉
      ,f.YHJF as f_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_ZXXS_56_A22_XSWHSZPJJG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS d ON a.BPXSID = d.ID /*被评学生ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_56_A21_XSWHSZPJXM AS e ON a.PJXMID = e.ID /*评价项目ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.DJYHID = f.LOGINNAME /*登记用户ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [db] ON d.XBM = [db].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dc] ON d.CSDM = [dc].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [dd] ON d.MZM = [dd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [de] ON d.GJDQM = [de].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [df] ON d.SFZJLXM = [df].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [dg] ON d.HYZKM = [dg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [dh] ON d.GATQWM = [dh].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [di] ON d.ZZMMM = [di].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [dj] ON d.JKZKM = [dj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [dk] ON d.XYZJM = [dk].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [dl] ON d.XXM = [dl].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dm] ON d.DSZYBZ = [dm].DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS [dn] ON d.XSLBM = [dn].DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [do] ON d.HKXZM = [do].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dp] ON d.SFLDRK = [dp].DM /*是否流动人口*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS [dq] ON d.XSDQZTM = [dq].DM /*学生当前状态码*/
GO
