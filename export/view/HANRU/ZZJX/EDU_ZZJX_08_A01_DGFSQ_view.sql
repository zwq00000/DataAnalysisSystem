
--代管费收取表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_08_A01_DGFSQ_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[XSXXID]--学生ID
      ,a.[XNID]--学年ID
      ,a.[YJJE]--已缴金额
      ,a.[JFRQ]--缴费日期
      ,a.[SFYSH]--是否已审核
      ,a.[SHRID]--审核人员ID
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学校名
      ,c.XH as c_XSXX_XH--学号
      ,c.XM as c_XSXX_XM--姓名
      ,c.YWXM as c_XSXX_YWXM--英文姓名
      ,c.XMPY as c_XSXX_XMPY--姓名拼音
      ,c.CYM as c_XSXX_CYM--曾用名
      ,c.SFZJLXM as c_XSXX_SFZJLXM--身份证件类型码
      ,cb.MC as c_XSXX_SFZJLXM_MC--名称
      ,c.SFZJH as c_XSXX_SFZJH--身份证件号
      ,c.XBM as c_XSXX_XBM--性别码
      ,cc.MC as c_XSXX_XBM_MC--名称
      ,c.XXM as c_XSXX_XXM--血型码
      ,cd.MC as c_XSXX_XXM_MC--名称
      ,cd.JC as c_XSXX_XXM_JC--简称
      ,c.CSRQ as c_XSXX_CSRQ--出生日期
      ,c.CSDM as c_XSXX_CSDM--出生地码
      ,ce.MC as c_XSXX_CSDM_MC--名称
      ,c.JG as c_XSXX_JG--籍贯
      ,c.MZM as c_XSXX_MZM--民族码
      ,cf.MZMC as c_XSXX_MZM_MZMC--民族名称
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--字母代码
      ,c.HYZKM as c_XSXX_HYZKM--婚姻状况码
      ,cg.MC as c_XSXX_HYZKM_MC--名称
      ,c.XYZJM as c_XSXX_XYZJM--信仰宗教码
      ,ch.MC as c_XSXX_XYZJM_MC--名称
      ,c.GATQWM as c_XSXX_GATQWM--港澳台侨外码
      ,ci.MC as c_XSXX_GATQWM_MC--名称
      ,ci.SM as c_XSXX_GATQWM_SM--说明
      ,c.JKZKM as c_XSXX_JKZKM--健康状况码
      ,cj.MC as c_XSXX_JKZKM_MC--名称
      ,cj.SM as c_XSXX_JKZKM_SM--说明
      ,c.ZZMMM as c_XSXX_ZZMMM--政治面貌码
      ,ck.MC as c_XSXX_ZZMMM_MC--名称
      ,ck.JC as c_XSXX_ZZMMM_JC--简称
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--户口所在地行政区划码
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--名称
      ,c.HKLBM as c_XSXX_HKLBM--户口类别码
      ,cm.MC as c_XSXX_HKLBM_MC--名称
      ,c.SFSLDRK as c_XSXX_SFSLDRK--是否是流动人口
      ,cn.MC as c_XSXX_SFSLDRK_MC--名称
      ,c.GJDQM as c_XSXX_GJDQM--国籍/地区
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--国家/地区名称简称
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--二字母代码
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--三字母代码
      ,c.TC as c_XSXX_TC--特长
      ,c.XSLXDH as c_XSXX_XSLXDH--学生联系电话
      ,c.WLDZ as c_XSXX_WLDZ--网络地址
      ,c.JSTXH as c_XSXX_JSTXH--即时通讯号
      ,c.DZXX as c_XSXX_DZXX--电子信箱
      ,c.ZP as c_XSXX_ZP--照片(路径)
      ,d.SCHOOLID as d_XN_SCHOOLID--学校名
      ,d.XN as d_XN_XN--学年
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--学校名
      ,e.GH as e_JZGJBSJ_GH--工号
      ,e.XM as e_JZGJBSJ_XM--姓名
      ,e.YWXM as e_JZGJBSJ_YWXM--英文姓名
      ,e.XMPY as e_JZGJBSJ_XMPY--姓名拼音
      ,e.CYM as e_JZGJBSJ_CYM--曾用名
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--身份证件类型码
      ,eb.MC as e_JZGJBSJ_SFZJLXM_MC--名称
      ,e.SFZJH as e_JZGJBSJ_SFZJH--身份证件号
      ,e.CSRQ as e_JZGJBSJ_CSRQ--出生日期
      ,e.XBM as e_JZGJBSJ_XBM--性别码
      ,ec.MC as e_JZGJBSJ_XBM_MC--名称
      ,e.MZM as e_JZGJBSJ_MZM--民族码
      ,ed.MZMC as e_JZGJBSJ_MZM_MZMC--民族名称
      ,ed.ZMDM as e_JZGJBSJ_MZM_ZMDM--字母代码
      ,e.XXM as e_JZGJBSJ_XXM--血型码
      ,ee.MC as e_JZGJBSJ_XXM_MC--名称
      ,ee.JC as e_JZGJBSJ_XXM_JC--简称
      ,e.JKZKM as e_JZGJBSJ_JKZKM--健康状况码
      ,ef.MC as e_JZGJBSJ_JKZKM_MC--名称
      ,ef.SM as e_JZGJBSJ_JKZKM_SM--说明
      ,e.HYZTM as e_JZGJBSJ_HYZTM--婚姻状态码
      ,eg.MC as e_JZGJBSJ_HYZTM_MC--名称
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--政治面貌码
      ,eh.MC as e_JZGJBSJ_ZZMMM_MC--名称
      ,eh.JC as e_JZGJBSJ_ZZMMM_JC--简称
      ,e.GATQWM as e_JZGJBSJ_GATQWM--港澳台侨外码
      ,ei.MC as e_JZGJBSJ_GATQWM_MC--名称
      ,ei.SM as e_JZGJBSJ_GATQWM_SM--说明
      ,e.JG as e_JZGJBSJ_JG--籍贯
      ,e.GJDQM as e_JZGJBSJ_GJDQM--国籍/地区码
      ,ej.GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,ej.EZMDM as e_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,ej.SZMDM as e_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,e.CSDXZQHM as e_JZGJBSJ_CSDXZQHM--出生地行政区划码
      ,ek.MC as e_JZGJBSJ_CSDXZQHM_MC--名称
      ,e.XYZJM as e_JZGJBSJ_XYZJM--信仰宗教码
      ,el.MC as e_JZGJBSJ_XYZJM_MC--名称
      ,e.JZGHKSZDXZQHM as e_JZGJBSJ_JZGHKSZDXZQHM--教职工户口所在地行政区划码
      ,em.MC as e_JZGJBSJ_JZGHKSZDXZQHM_MC--名称
      ,e.HKLBM as e_JZGJBSJ_HKLBM--户口类别码
      ,en.MC as e_JZGJBSJ_HKLBM_MC--名称
      ,e.DQZZ as e_JZGJBSJ_DQZZ--当前住址
      ,e.DQZZYZBM as e_JZGJBSJ_DQZZYZBM--当前住址邮政编码
      ,e.CJGZNY as e_JZGJBSJ_CJGZNY--参加工作年月
      ,e.CJNY as e_JZGJBSJ_CJNY--从教年月
      ,e.LXNY as e_JZGJBSJ_LXNY--来校年月
      ,e.BZLBM as e_JZGJBSJ_BZLBM--编制类别码
      ,eo.MC as e_JZGJBSJ_BZLBM_MC--名称
      ,e.JZGLBM as e_JZGJBSJ_JZGLBM--教职工类别码
      ,ep.MC as e_JZGJBSJ_JZGLBM_MC--名称
      ,ep.SM as e_JZGJBSJ_JZGLBM_SM--说明
      ,e.GWLBM as e_JZGJBSJ_GWLBM--岗位类别码
      ,eq.MC as e_JZGJBSJ_GWLBM_MC--名称
      ,e.SFJZJS as e_JZGJBSJ_SFJZJS--是否兼职教师
      ,er.MC as e_JZGJBSJ_SFJZJS_MC--名称
      ,e.SFSSXJS as e_JZGJBSJ_SFSSXJS--是否双师型教
      ,es.MC as e_JZGJBSJ_SFSSXJS_MC--名称
      ,e.ZP as e_JZGJBSJ_ZP--照片(路径)
      ,e.DQZTM as e_JZGJBSJ_DQZTM--当前状态码
      ,et.MC as e_JZGJBSJ_DQZTM_MC--名称
      ,e.YDDH as e_JZGJBSJ_YDDH--移动电话
      ,e.GDDH as e_JZGJBSJ_GDDH--固定电话
      ,e.TXDZYZBM as e_JZGJBSJ_TXDZYZBM--通信地址邮政编码
      ,e.TXDZ as e_JZGJBSJ_TXDZ--通信地址
      ,e.DZXX as e_JZGJBSJ_DZXX--电子信箱
      ,e.WLDZ as e_JZGJBSJ_WLDZ--网络地址
      ,e.JSTXH as e_JZGJBSJ_JSTXH--即时通讯号

FROM dbo.EDU_ZZJX_08_A01_DGFSQ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS d ON a.XNID = d.ID /*学年ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.SHRID = e.ID /*审核人员ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS eb ON e.SFZJLXM = eb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS ec ON e.XBM = ec.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ee ON e.XXM = ee.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ef ON e.JKZKM = ef.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS eg ON e.HYZTM = eg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS eh ON e.ZZMMM = eh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ei ON e.GATQWM = ei.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ej ON e.GJDQM = ej.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ek ON e.CSDXZQHM = ek.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS el ON e.XYZJM = el.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS em ON e.JZGHKSZDXZQHM = em.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS en ON e.HKLBM = en.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS eo ON e.BZLBM = eo.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS ep ON e.JZGLBM = ep.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS eq ON e.GWLBM = eq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS er ON e.SFJZJS = er.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS es ON e.SFSSXJS = es.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS et ON e.DQZTM = et.DM /*当前状态码*/
GO
