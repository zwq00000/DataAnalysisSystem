
--实习奖惩表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A11_SXJC_DISP]
AS
SELECT a.[ID]--奖惩信息ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SXJHID]--实习计划ID
      ,a.[XSXXID]--学生信息ID
      ,a.[JCLX]--奖惩类型
      ,a.[JCRQ]--奖惩日期
      ,a.[CLJG]--处理结果
      ,a.[BZ]--备注
      ,a.[TJR]--添加人
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--学校ID
      ,c.JHBT as c_XXSXJH_JHBT--计划标题
      ,c.NJ as c_XXSXJH_NJ--年级
      ,c.BGXS as c_XXSXJH_BGXS--报告形式
      ,c.SFSX as c_XXSXJH_SFSX--计划是否生效
      ,cb.MC as c_XXSXJH_SFSX_MC--名称
      ,d.SCHOOLID as d_XSXX_SCHOOLID--学校名
      ,d.XH as d_XSXX_XH--学号
      ,d.XM as d_XSXX_XM--姓名
      ,d.YWXM as d_XSXX_YWXM--英文姓名
      ,d.XMPY as d_XSXX_XMPY--姓名拼音
      ,d.CYM as d_XSXX_CYM--曾用名
      ,d.SFZJLXM as d_XSXX_SFZJLXM--身份证件类型码
      ,db.MC as d_XSXX_SFZJLXM_MC--名称
      ,d.SFZJH as d_XSXX_SFZJH--身份证件号
      ,d.XBM as d_XSXX_XBM--性别码
      ,dc.MC as d_XSXX_XBM_MC--名称
      ,d.XXM as d_XSXX_XXM--血型码
      ,dd.MC as d_XSXX_XXM_MC--名称
      ,dd.JC as d_XSXX_XXM_JC--简称
      ,d.CSRQ as d_XSXX_CSRQ--出生日期
      ,d.CSDM as d_XSXX_CSDM--出生地码
      ,de.MC as d_XSXX_CSDM_MC--名称
      ,d.JG as d_XSXX_JG--籍贯
      ,d.MZM as d_XSXX_MZM--民族码
      ,df.MZMC as d_XSXX_MZM_MZMC--民族名称
      ,df.ZMDM as d_XSXX_MZM_ZMDM--字母代码
      ,d.HYZKM as d_XSXX_HYZKM--婚姻状况码
      ,dg.MC as d_XSXX_HYZKM_MC--名称
      ,d.XYZJM as d_XSXX_XYZJM--信仰宗教码
      ,dh.MC as d_XSXX_XYZJM_MC--名称
      ,d.GATQWM as d_XSXX_GATQWM--港澳台侨外码
      ,di.MC as d_XSXX_GATQWM_MC--名称
      ,di.SM as d_XSXX_GATQWM_SM--说明
      ,d.JKZKM as d_XSXX_JKZKM--健康状况码
      ,dj.MC as d_XSXX_JKZKM_MC--名称
      ,dj.SM as d_XSXX_JKZKM_SM--说明
      ,d.ZZMMM as d_XSXX_ZZMMM--政治面貌码
      ,dk.MC as d_XSXX_ZZMMM_MC--名称
      ,dk.JC as d_XSXX_ZZMMM_JC--简称
      ,d.HKSZDXZQHM as d_XSXX_HKSZDXZQHM--户口所在地行政区划码
      ,dl.MC as d_XSXX_HKSZDXZQHM_MC--名称
      ,d.HKLBM as d_XSXX_HKLBM--户口类别码
      ,dm.MC as d_XSXX_HKLBM_MC--名称
      ,d.SFSLDRK as d_XSXX_SFSLDRK--是否是流动人口
      ,dn.MC as d_XSXX_SFSLDRK_MC--名称
      ,d.GJDQM as d_XSXX_GJDQM--国籍/地区
      ,do.GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--国家/地区名称简称
      ,do.EZMDM as d_XSXX_GJDQM_EZMDM--二字母代码
      ,do.SZMDM as d_XSXX_GJDQM_SZMDM--三字母代码
      ,d.TC as d_XSXX_TC--特长
      ,d.XSLXDH as d_XSXX_XSLXDH--学生联系电话
      ,d.WLDZ as d_XSXX_WLDZ--网络地址
      ,d.JSTXH as d_XSXX_JSTXH--即时通讯号
      ,d.DZXX as d_XSXX_DZXX--电子信箱
      ,d.ZP as d_XSXX_ZP--照片(路径)

FROM dbo.EDU_ZZJX_07_A11_SXJC AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*实习计划ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.XSXXID = d.ID /*学生信息ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*计划是否生效*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS db ON d.SFZJLXM = db.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS dc ON d.XBM = dc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dd ON d.XXM = dd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS de ON d.CSDM = de.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS df ON d.MZM = df.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZKM = dg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dh ON d.XYZJM = dh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS di ON d.GATQWM = di.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS dj ON d.JKZKM = dj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dk ON d.ZZMMM = dk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dl ON d.HKSZDXZQHM = dl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dm ON d.HKLBM = dm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dn ON d.SFSLDRK = dn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS do ON d.GJDQM = do.DM /*国籍/地区*/
GO
