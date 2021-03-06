
--任课数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_07_02_RKSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[JZGJBSJID]--教职工基本数据子类表
      ,a.[RKKCH]--任课课程号
      ,a.[RKQSNY]--任课起始年月
      ,a.[RKZZNY]--任课终止年月
      ,a.[RKZXS]--任课总学时
      ,a.[RKXDM]--任课学段码
      ,a.[RKJSM]--任课角色码
      ,a.[SKBJ]--授课班级
      ,a.[SKRS]--授课人数
      ,a.[ZKS]--周课时
      ,a.[SFLT]--是否连堂
      ,a.[NJID]--年级号
      ,a.[XQID]--学期
      ,a.[XNID]--学年
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,c.GH as c_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,c.XM as c_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,c.YWXM as c_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,c.XMPY as c_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,c.CYM as c_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,c.XBM as c_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[cb].MC as c_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,c.CSRQ as c_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,c.CSDM as c_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,[cc].MC as c_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,c.MZM as c_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[cd].MZMC as c_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[cd].ZMDM as c_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.GJDQM as c_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[ce].GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ce].EZMDM as c_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ce].SZMDM as c_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[cf].MC as c_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,c.HYZKM as c_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,[cg].MC as c_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,c.GATQWM as c_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[ch].MC as c_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[ch].SM as c_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[ci].MC as c_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[ci].JC as c_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,c.JKZKM as c_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[cj].MC as c_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[cj].SM as c_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,c.XYZJM as c_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[ck].MC as c_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,c.XXM as c_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[cl].MC as c_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[cl].JC as c_JZGJBSJ_XXM_JC--血型代码表 简称
      ,c.ZP as c_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,c.SFZJYXQ as c_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,c.JGH as c_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,c.JTZZ as c_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,c.XZZ as c_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,c.HKSZD as c_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,c.HKXZM as c_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,[cm].MC as c_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,c.XLM as c_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,[cn].MC as c_JZGJBSJ_XLM_MC--学历代码 名称
      ,c.GZNY as c_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,c.LXNY as c_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,c.CJNY as c_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,c.BZLBM as c_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[co].MC as c_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,c.DABH as c_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,c.DAWB as c_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,c.TXDZ as c_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,c.LXDH as c_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,c.YZBM as c_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,c.DZXX as c_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,c.ZYDZ as c_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,c.TC as c_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,c.GWZYM as c_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,[cp].MC as c_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,c.ZYRKXD as c_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,[cq].MC as c_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,c.JZGLXID as c_JZGJBSJ_JZGLXID--教职工基本数据子类表 教职工类型ID
      ,c.XQ as c_JZGJBSJ_XQ--教职工基本数据子类表 校区
      ,c.ZGZC as c_JZGJBSJ_ZGZC--教职工基本数据子类表 最高职称
      ,c.PDSJ as c_JZGJBSJ_PDSJ--教职工基本数据子类表 评定时间
      ,c.XPZC as c_JZGJBSJ_XPZC--教职工基本数据子类表 现品职称
      ,c.PDESJ as c_JZGJBSJ_PDESJ--教职工基本数据子类表 聘得时间
      ,c.RBXQDW as c_JZGJBSJ_RBXQDW--教职工基本数据子类表 入本校前单位
      ,c.ZZZT as c_JZGJBSJ_ZZZT--教职工基本数据子类表 在职状态
      ,c.SZBM as c_JZGJBSJ_SZBM--教职工基本数据子类表 所在部门
      ,c.XZZW as c_JZGJBSJ_XZZW--教职工基本数据子类表 行政职务
      ,c.DH as c_JZGJBSJ_DH--教职工基本数据子类表 短号
      ,c.PTHDJ as c_JZGJBSJ_PTHDJ--教职工基本数据子类表 普通话等级
      ,c.JSZH as c_JZGJBSJ_JSZH--教职工基本数据子类表 教师证号
      ,c.JSJDJ as c_JZGJBSJ_JSJDJ--教职工基本数据子类表 计算机等级
      ,c.GGJSDJ as c_JZGJBSJ_GGJSDJ--教职工基本数据子类表 骨干教师等级
      ,c.RJXK as c_JZGJBSJ_RJXK--教职工基本数据子类表 任教学科
      ,c.SFRSDL as c_JZGJBSJ_SFRSDL--教职工基本数据子类表 是否人事代理
      ,c.NDKH as c_JZGJBSJ_NDKH--教职工基本数据子类表 年度考核
      ,c.XXJL as c_JZGJBSJ_XXJL--教职工基本数据子类表 学习经历
      ,c.GZJL as c_JZGJBSJ_GZJL--教职工基本数据子类表 工作经历
      ,c.JYQK as c_JZGJBSJ_JYQK--教职工基本数据子类表 教研情况
      ,c.GZYLJCQK as c_JZGJBSJ_GZYLJCQK--教职工基本数据子类表 工作以来奖惩情况
      ,c.JTZYCY as c_JZGJBSJ_JTZYCY--教职工基本数据子类表 家庭主要成员
      ,c.BZ as c_JZGJBSJ_BZ--教职工基本数据子类表 备注
      ,c.DYXLCD as c_JZGJBSJ_DYXLCD--教职工基本数据子类表 第一学历程度
      ,c.DYXLFS as c_JZGJBSJ_DYXLFS--教职工基本数据子类表 第一学历方式
      ,c.DYXLXZ as c_JZGJBSJ_DYXLXZ--教职工基本数据子类表 第一学历学制
      ,c.DYXLXW as c_JZGJBSJ_DYXLXW--教职工基本数据子类表 第一学历学位
      ,c.DYXLBYSJ as c_JZGJBSJ_DYXLBYSJ--教职工基本数据子类表 第一学历毕业时间
      ,c.DYXLBYXX as c_JZGJBSJ_DYXLBYXX--教职工基本数据子类表 第一学历毕业学校
      ,c.DYXLZY as c_JZGJBSJ_DYXLZY--教职工基本数据子类表 第一学历专业
      ,c.ZGXLCD as c_JZGJBSJ_ZGXLCD--教职工基本数据子类表 最高学历程度
      ,c.ZGXLFS as c_JZGJBSJ_ZGXLFS--教职工基本数据子类表 最高学历方式
      ,c.ZGXLXZ as c_JZGJBSJ_ZGXLXZ--教职工基本数据子类表 最高学历学制
      ,c.ZGXLXW as c_JZGJBSJ_ZGXLXW--教职工基本数据子类表 最高学历学位
      ,c.ZGXLBYSJ as c_JZGJBSJ_ZGXLBYSJ--教职工基本数据子类表 最高学历毕业时间
      ,c.ZGXLBYXX as c_JZGJBSJ_ZGXLBYXX--教职工基本数据子类表 最高学历毕业学校
      ,c.ZGXLZY as c_JZGJBSJ_ZGXLZY--教职工基本数据子类表 最高学历专业
      ,d.SCHOOLID as d_KC_SCHOOLID--课程数据类 学校名
      ,d.KCMC as d_KC_KCMC--课程数据类 课程名称
      ,d.KCM as d_KC_KCM--课程数据类 课程码
      ,[db].MC as d_KC_KCM_MC--中小学课程代码表 名称
      ,[db].SYXX as d_KC_KCM_SYXX--中小学课程代码表 适用学校
      ,d.KCDJM as d_KC_KCDJM--课程数据类 课程等级码
      ,[dc].MC as d_KC_KCDJM_MC--中小学课程等级代码表 名称
      ,d.KCBM as d_KC_KCBM--课程数据类 课程别名
      ,d.KCJJ as d_KC_KCJJ--课程数据类 课程简介
      ,d.KCYQ as d_KC_KCYQ--课程数据类 课程要求
      ,d.ZXS as d_KC_ZXS--课程数据类 总学时
      ,d.ZHXS as d_KC_ZHXS--课程数据类 周学时
      ,d.ZXXS as d_KC_ZXXS--课程数据类 自学学时
      ,d.SKFSM as d_KC_SKFSM--课程数据类 授课方式码
      ,[dd].MC as d_KC_SKFSM_MC--授课方式代码表 名称
      ,d.JCBM as d_KC_JCBM--课程数据类 教材编码
      ,d.CKSM as d_KC_CKSM--课程数据类 参考书目
      ,d.CDXZ as d_KC_CDXZ--课程数据类 场地限制
      ,d.SFZK as d_KC_SFZK--课程数据类 是否主课
      ,[de].MC as d_KC_SFZK_MC--是否标志代码表 名称
      ,d.PLSX as d_KC_PLSX--课程数据类 排列顺序
      ,e.MC as e_RKXD_MC--任课学段代码表 名称
      ,f.MC as f_RKJS_MC--任课角色代码表 名称
      ,g.SCHOOLID as g_BJ_SCHOOLID--班级数据类表 学校名
      ,g.NJ as g_BJ_NJ--班级数据类表 年级号
      ,g.BJ as g_BJ_BJ--班级数据类表 班级名称
      ,g.JBNY as g_BJ_JBNY--班级数据类表 建班年月
      ,g.BZRGH as g_BJ_BZRGH--班级数据类表 班主任工号
      ,g.BZXH as g_BJ_BZXH--班级数据类表 班长学号
      ,g.BJRYCH as g_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,g.XZ as g_BJ_XZ--班级数据类表 学制
      ,g.BJLXM as g_BJ_BJLXM--班级数据类表 班级类型码
      ,[gb].MC as g_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,g.WLLX as g_BJ_WLLX--班级数据类表 文理类型
      ,g.BYRQ as g_BJ_BYRQ--班级数据类表 毕业日期
      ,g.SFSSMZSYJXB as g_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,[gc].MC as g_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,g.SYJXMSM as g_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,[gd].MC as g_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,[gd].SM as g_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,g.BZRID as g_BJ_BZRID--班级数据类表 班主任ID
      ,g.ZT as g_BJ_ZT--班级数据类表 状态
      ,g.PLSX as g_BJ_PLSX--班级数据类表 排列顺序
      ,g.BJLBID as g_BJ_BJLBID--班级数据类表 班级类别ID
      ,g.FBZRID as g_BJ_FBZRID--班级数据类表 副班主任ID
      ,h.MC as h_SFBZ_MC--是否标志代码表 名称
      ,i.SCHOOLID as i_NJ_SCHOOLID--年级数据类表 学校名
      ,i.NJMC as i_NJ_NJMC--年级数据类表 年级名称
      ,i.ZT as i_NJ_ZT--年级数据类表 状态
      ,i.PLSX as i_NJ_PLSX--年级数据类表 排列顺序
      ,j.SCHOOLID as j_XQ_SCHOOLID--学期数据表 学校名
      ,j.XNID as j_XQ_XNID--学期数据表 学年
      ,j.XQM as j_XQ_XQM--学期数据表 学期码
      ,[jb].MC as j_XQ_XQM_MC--学期代码表 名称
      ,j.XQMC as j_XQ_XQMC--学期数据表 学期名称
      ,j.XQKSRQ as j_XQ_XQKSRQ--学期数据表 学期开始日期
      ,j.XQJSRQ as j_XQ_XQJSRQ--学期数据表 学期结束日期
      ,j.BaseProjectInfoID as j_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键
      ,k.SCHOOLID as k_XN_SCHOOLID--学年表 学校名
      ,k.XN as k_XN_XN--学年表 学年

FROM dbo.EDU_ZXJZ_07_02_RKSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*教职工基本数据子类表*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS d ON a.RKKCH = d.KCH /*任课课程号*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS e ON a.RKXDM = e.DM /*任课学段码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKJS AS f ON a.RKJSM = f.DM /*任课角色码*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS g ON a.SKBJ = g.BH /*授课班级*/ AND a.SCHOOLID = g.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS h ON a.SFLT = h.DM /*是否连堂*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS i ON a.NJID = i.NJ /*年级号*/ AND a.SCHOOLID = i.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS j ON a.XQID = j.ID /*学期*/ AND a.SCHOOLID = j.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS k ON a.XNID = k.ID /*学年*/ AND a.SCHOOLID = k.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cb] ON c.XBM = [cb].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cc] ON c.CSDM = [cc].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cd] ON c.MZM = [cd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ce] ON c.GJDQM = [ce].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cf] ON c.SFZJLXM = [cf].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZKM = [cg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ch] ON c.GATQWM = [ch].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ci] ON c.ZZMMM = [ci].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cj] ON c.JKZKM = [cj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ck] ON c.XYZJM = [ck].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [cl] ON c.XXM = [cl].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cm] ON c.HKXZM = [cm].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [cn] ON c.XLM = [cn].DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [co] ON c.BZLBM = [co].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [cp] ON c.GWZYM = [cp].DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [cq] ON c.ZYRKXD = [cq].DM /*主要任课学段*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS [db] ON d.KCM = [db].DM /*课程码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS [dc] ON d.KCDJM = [dc].DM /*课程等级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [dd] ON d.SKFSM = [dd].DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [de] ON d.SFZK = [de].DM /*是否主课*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [gb] ON g.BJLXM = [gb].DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gc] ON g.SFSSMZSYJXB = [gc].DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [gd] ON g.SYJXMSM = [gd].DM /*双语教学模式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [jb] ON j.XQM = [jb].DM /*学期码*/
GO
