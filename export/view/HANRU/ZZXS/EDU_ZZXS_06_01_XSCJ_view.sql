
--学生成绩数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_06_01_XSCJ_DISP]
AS
SELECT a.[XSXXID]--学生ID
      ,a.[SCHOOLID]--学校ID
      ,a.[KCH]--课程号
      ,a.[XQID]--学期ID
      ,a.[KCMC]--课程名称
      ,a.[XF]--学分
      ,a.[XQMC]--学期名称
      ,a.[PSCJ]--平时成绩
      ,a.[CJ]--成绩
      ,a.[KSXZ]--考试性质
      ,a.[RKJGID]--任课教工ID
      ,a.[RKJGH]--任课教工号
      ,a.[CJLRJGID]--成绩录入教工ID
      ,a.[CJLRJGH]--成绩录入教工号
      ,a.[CJLRRQ]--成绩录入日期
      ,a.[QZCJ]--期中成绩
      ,a.[QMCJ]--期末成绩
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学校名
      ,b.XH as b_XSXX_XH--学号
      ,b.XM as b_XSXX_XM--姓名
      ,b.YWXM as b_XSXX_YWXM--英文姓名
      ,b.XMPY as b_XSXX_XMPY--姓名拼音
      ,b.CYM as b_XSXX_CYM--曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--身份证件类型码
      ,bb.MC as b_XSXX_SFZJLXM_MC--名称
      ,b.SFZJH as b_XSXX_SFZJH--身份证件号
      ,b.XBM as b_XSXX_XBM--性别码
      ,bc.MC as b_XSXX_XBM_MC--名称
      ,b.XXM as b_XSXX_XXM--血型码
      ,bd.MC as b_XSXX_XXM_MC--名称
      ,bd.JC as b_XSXX_XXM_JC--简称
      ,b.CSRQ as b_XSXX_CSRQ--出生日期
      ,b.CSDM as b_XSXX_CSDM--出生地码
      ,be.MC as b_XSXX_CSDM_MC--名称
      ,b.JG as b_XSXX_JG--籍贯
      ,b.MZM as b_XSXX_MZM--民族码
      ,bf.MZMC as b_XSXX_MZM_MZMC--民族名称
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--字母代码
      ,b.HYZKM as b_XSXX_HYZKM--婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--名称
      ,b.XYZJM as b_XSXX_XYZJM--信仰宗教码
      ,bh.MC as b_XSXX_XYZJM_MC--名称
      ,b.GATQWM as b_XSXX_GATQWM--港澳台侨外码
      ,bi.MC as b_XSXX_GATQWM_MC--名称
      ,bi.SM as b_XSXX_GATQWM_SM--说明
      ,b.JKZKM as b_XSXX_JKZKM--健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--名称
      ,bj.SM as b_XSXX_JKZKM_SM--说明
      ,b.ZZMMM as b_XSXX_ZZMMM--政治面貌码
      ,bk.MC as b_XSXX_ZZMMM_MC--名称
      ,bk.JC as b_XSXX_ZZMMM_JC--简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--户口所在地行政区划码
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--名称
      ,b.HKLBM as b_XSXX_HKLBM--户口类别码
      ,bm.MC as b_XSXX_HKLBM_MC--名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--是否是流动人口
      ,bn.MC as b_XSXX_SFSLDRK_MC--名称
      ,b.GJDQM as b_XSXX_GJDQM--国籍/地区
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--国家/地区名称简称
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--二字母代码
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--三字母代码
      ,b.TC as b_XSXX_TC--特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--网络地址
      ,b.JSTXH as b_XSXX_JSTXH--即时通讯号
      ,b.DZXX as b_XSXX_DZXX--电子信箱
      ,b.ZP as b_XSXX_ZP--照片(路径)
      ,c.SCHOOLNAME as c_SCHOOL_SCHOOLNAME--学校名称
      ,c.SCHOOLTYPE as c_SCHOOL_SCHOOLTYPE--学校类型
      ,c.XNID as c_SCHOOL_XNID--学年ID
      ,c.XQID as c_SCHOOL_XQID--学期ID
      ,c.MatchURL as c_SCHOOL_MatchURL--匹配url
      ,c.LogLevel as c_SCHOOL_LogLevel--日志级别
      ,d.SCHOOLID as d_KC_SCHOOLID--学校ID
      ,d.KCMC as d_KC_KCMC--课程名称
      ,d.KCYWM as d_KC_KCYWM--课程英文名
      ,d.KCBM as d_KC_KCBM--课程别名
      ,d.KCJS as d_KC_KCJS--课程介绍
      ,d.XF as d_KC_XF--学分
      ,d.ZXS as d_KC_ZXS--总学时
      ,d.LLXS as d_KC_LLXS--理论学时
      ,d.SJXS as d_KC_SJXS--实践学时
      ,d.QTXS as d_KC_QTXS--其他学时
      ,d.CKSM as d_KC_CKSM--参考书目
      ,d.KKDW as d_KC_KKDW--开课单位
      ,d.KSXS as d_KC_KSXS--考试形式
      ,db.MC as d_KC_KSXS_MC--名称
      ,d.SKFSM as d_KC_SKFSM--授课方式码
      ,dc.MC as d_KC_SKFSM_MC--名称
      ,d.KCFY as d_KC_KCFY--课程费用
      ,e.SCHOOLID as e_XQ_SCHOOLID--学校名
      ,e.XNID as e_XQ_XNID--学年
      ,e.XQM as e_XQ_XQM--学期码
      ,eb.MC as e_XQ_XQM_MC--名称
      ,e.XQMC as e_XQ_XQMC--学期名称
      ,e.XQKSRQ as e_XQ_XQKSRQ--学期开始日期
      ,e.XQJSRQ as e_XQ_XQJSRQ--学期结束日期
      ,f.MC as f_KSXZ_MC--名称
      ,f.SM as f_KSXZ_SM--说明
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--学校名
      ,g.GH as g_JZGJBSJ_GH--工号
      ,g.XM as g_JZGJBSJ_XM--姓名
      ,g.YWXM as g_JZGJBSJ_YWXM--英文姓名
      ,g.XMPY as g_JZGJBSJ_XMPY--姓名拼音
      ,g.CYM as g_JZGJBSJ_CYM--曾用名
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--身份证件类型码
      ,gb.MC as g_JZGJBSJ_SFZJLXM_MC--名称
      ,g.SFZJH as g_JZGJBSJ_SFZJH--身份证件号
      ,g.CSRQ as g_JZGJBSJ_CSRQ--出生日期
      ,g.XBM as g_JZGJBSJ_XBM--性别码
      ,gc.MC as g_JZGJBSJ_XBM_MC--名称
      ,g.MZM as g_JZGJBSJ_MZM--民族码
      ,gd.MZMC as g_JZGJBSJ_MZM_MZMC--民族名称
      ,gd.ZMDM as g_JZGJBSJ_MZM_ZMDM--字母代码
      ,g.XXM as g_JZGJBSJ_XXM--血型码
      ,ge.MC as g_JZGJBSJ_XXM_MC--名称
      ,ge.JC as g_JZGJBSJ_XXM_JC--简称
      ,g.JKZKM as g_JZGJBSJ_JKZKM--健康状况码
      ,gf.MC as g_JZGJBSJ_JKZKM_MC--名称
      ,gf.SM as g_JZGJBSJ_JKZKM_SM--说明
      ,g.HYZTM as g_JZGJBSJ_HYZTM--婚姻状态码
      ,gg.MC as g_JZGJBSJ_HYZTM_MC--名称
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--政治面貌码
      ,gh.MC as g_JZGJBSJ_ZZMMM_MC--名称
      ,gh.JC as g_JZGJBSJ_ZZMMM_JC--简称
      ,g.GATQWM as g_JZGJBSJ_GATQWM--港澳台侨外码
      ,gi.MC as g_JZGJBSJ_GATQWM_MC--名称
      ,gi.SM as g_JZGJBSJ_GATQWM_SM--说明
      ,g.JG as g_JZGJBSJ_JG--籍贯
      ,g.GJDQM as g_JZGJBSJ_GJDQM--国籍/地区码
      ,gj.GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,gj.EZMDM as g_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,gj.SZMDM as g_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,g.CSDXZQHM as g_JZGJBSJ_CSDXZQHM--出生地行政区划码
      ,gk.MC as g_JZGJBSJ_CSDXZQHM_MC--名称
      ,g.XYZJM as g_JZGJBSJ_XYZJM--信仰宗教码
      ,gl.MC as g_JZGJBSJ_XYZJM_MC--名称
      ,g.JZGHKSZDXZQHM as g_JZGJBSJ_JZGHKSZDXZQHM--教职工户口所在地行政区划码
      ,gm.MC as g_JZGJBSJ_JZGHKSZDXZQHM_MC--名称
      ,g.HKLBM as g_JZGJBSJ_HKLBM--户口类别码
      ,gn.MC as g_JZGJBSJ_HKLBM_MC--名称
      ,g.DQZZ as g_JZGJBSJ_DQZZ--当前住址
      ,g.DQZZYZBM as g_JZGJBSJ_DQZZYZBM--当前住址邮政编码
      ,g.CJGZNY as g_JZGJBSJ_CJGZNY--参加工作年月
      ,g.CJNY as g_JZGJBSJ_CJNY--从教年月
      ,g.LXNY as g_JZGJBSJ_LXNY--来校年月
      ,g.BZLBM as g_JZGJBSJ_BZLBM--编制类别码
      ,go.MC as g_JZGJBSJ_BZLBM_MC--名称
      ,g.JZGLBM as g_JZGJBSJ_JZGLBM--教职工类别码
      ,gp.MC as g_JZGJBSJ_JZGLBM_MC--名称
      ,gp.SM as g_JZGJBSJ_JZGLBM_SM--说明
      ,g.GWLBM as g_JZGJBSJ_GWLBM--岗位类别码
      ,gq.MC as g_JZGJBSJ_GWLBM_MC--名称
      ,g.SFJZJS as g_JZGJBSJ_SFJZJS--是否兼职教师
      ,gr.MC as g_JZGJBSJ_SFJZJS_MC--名称
      ,g.SFSSXJS as g_JZGJBSJ_SFSSXJS--是否双师型教
      ,gs.MC as g_JZGJBSJ_SFSSXJS_MC--名称
      ,g.ZP as g_JZGJBSJ_ZP--照片(路径)
      ,g.DQZTM as g_JZGJBSJ_DQZTM--当前状态码
      ,gt.MC as g_JZGJBSJ_DQZTM_MC--名称
      ,g.YDDH as g_JZGJBSJ_YDDH--移动电话
      ,g.GDDH as g_JZGJBSJ_GDDH--固定电话
      ,g.TXDZYZBM as g_JZGJBSJ_TXDZYZBM--通信地址邮政编码
      ,g.TXDZ as g_JZGJBSJ_TXDZ--通信地址
      ,g.DZXX as g_JZGJBSJ_DZXX--电子信箱
      ,g.WLDZ as g_JZGJBSJ_WLDZ--网络地址
      ,g.JSTXH as g_JZGJBSJ_JSTXH--即时通讯号
      ,h.SCHOOLID as h_JZGJBSJ_SCHOOLID--学校名
      ,h.GH as h_JZGJBSJ_GH--工号
      ,h.XM as h_JZGJBSJ_XM--姓名
      ,h.YWXM as h_JZGJBSJ_YWXM--英文姓名
      ,h.XMPY as h_JZGJBSJ_XMPY--姓名拼音
      ,h.CYM as h_JZGJBSJ_CYM--曾用名
      ,h.SFZJLXM as h_JZGJBSJ_SFZJLXM--身份证件类型码
      ,hb.MC as h_JZGJBSJ_SFZJLXM_MC--名称
      ,h.SFZJH as h_JZGJBSJ_SFZJH--身份证件号
      ,h.CSRQ as h_JZGJBSJ_CSRQ--出生日期
      ,h.XBM as h_JZGJBSJ_XBM--性别码
      ,hc.MC as h_JZGJBSJ_XBM_MC--名称
      ,h.MZM as h_JZGJBSJ_MZM--民族码
      ,hd.MZMC as h_JZGJBSJ_MZM_MZMC--民族名称
      ,hd.ZMDM as h_JZGJBSJ_MZM_ZMDM--字母代码
      ,h.XXM as h_JZGJBSJ_XXM--血型码
      ,he.MC as h_JZGJBSJ_XXM_MC--名称
      ,he.JC as h_JZGJBSJ_XXM_JC--简称
      ,h.JKZKM as h_JZGJBSJ_JKZKM--健康状况码
      ,hf.MC as h_JZGJBSJ_JKZKM_MC--名称
      ,hf.SM as h_JZGJBSJ_JKZKM_SM--说明
      ,h.HYZTM as h_JZGJBSJ_HYZTM--婚姻状态码
      ,hg.MC as h_JZGJBSJ_HYZTM_MC--名称
      ,h.ZZMMM as h_JZGJBSJ_ZZMMM--政治面貌码
      ,hh.MC as h_JZGJBSJ_ZZMMM_MC--名称
      ,hh.JC as h_JZGJBSJ_ZZMMM_JC--简称
      ,h.GATQWM as h_JZGJBSJ_GATQWM--港澳台侨外码
      ,hi.MC as h_JZGJBSJ_GATQWM_MC--名称
      ,hi.SM as h_JZGJBSJ_GATQWM_SM--说明
      ,h.JG as h_JZGJBSJ_JG--籍贯
      ,h.GJDQM as h_JZGJBSJ_GJDQM--国籍/地区码
      ,hj.GJDQMCJC as h_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,hj.EZMDM as h_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,hj.SZMDM as h_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,h.CSDXZQHM as h_JZGJBSJ_CSDXZQHM--出生地行政区划码
      ,hk.MC as h_JZGJBSJ_CSDXZQHM_MC--名称
      ,h.XYZJM as h_JZGJBSJ_XYZJM--信仰宗教码
      ,hl.MC as h_JZGJBSJ_XYZJM_MC--名称
      ,h.JZGHKSZDXZQHM as h_JZGJBSJ_JZGHKSZDXZQHM--教职工户口所在地行政区划码
      ,hm.MC as h_JZGJBSJ_JZGHKSZDXZQHM_MC--名称
      ,h.HKLBM as h_JZGJBSJ_HKLBM--户口类别码
      ,hn.MC as h_JZGJBSJ_HKLBM_MC--名称
      ,h.DQZZ as h_JZGJBSJ_DQZZ--当前住址
      ,h.DQZZYZBM as h_JZGJBSJ_DQZZYZBM--当前住址邮政编码
      ,h.CJGZNY as h_JZGJBSJ_CJGZNY--参加工作年月
      ,h.CJNY as h_JZGJBSJ_CJNY--从教年月
      ,h.LXNY as h_JZGJBSJ_LXNY--来校年月
      ,h.BZLBM as h_JZGJBSJ_BZLBM--编制类别码
      ,ho.MC as h_JZGJBSJ_BZLBM_MC--名称
      ,h.JZGLBM as h_JZGJBSJ_JZGLBM--教职工类别码
      ,hp.MC as h_JZGJBSJ_JZGLBM_MC--名称
      ,hp.SM as h_JZGJBSJ_JZGLBM_SM--说明
      ,h.GWLBM as h_JZGJBSJ_GWLBM--岗位类别码
      ,hq.MC as h_JZGJBSJ_GWLBM_MC--名称
      ,h.SFJZJS as h_JZGJBSJ_SFJZJS--是否兼职教师
      ,hr.MC as h_JZGJBSJ_SFJZJS_MC--名称
      ,h.SFSSXJS as h_JZGJBSJ_SFSSXJS--是否双师型教
      ,hs.MC as h_JZGJBSJ_SFSSXJS_MC--名称
      ,h.ZP as h_JZGJBSJ_ZP--照片(路径)
      ,h.DQZTM as h_JZGJBSJ_DQZTM--当前状态码
      ,ht.MC as h_JZGJBSJ_DQZTM_MC--名称
      ,h.YDDH as h_JZGJBSJ_YDDH--移动电话
      ,h.GDDH as h_JZGJBSJ_GDDH--固定电话
      ,h.TXDZYZBM as h_JZGJBSJ_TXDZYZBM--通信地址邮政编码
      ,h.TXDZ as h_JZGJBSJ_TXDZ--通信地址
      ,h.DZXX as h_JZGJBSJ_DZXX--电子信箱
      ,h.WLDZ as h_JZGJBSJ_WLDZ--网络地址
      ,h.JSTXH as h_JZGJBSJ_JSTXH--即时通讯号

FROM dbo.EDU_ZZXS_06_01_XSCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS c ON a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCH = d.KCH /*课程号*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*学期ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXZ AS f ON a.KSXZ = f.DM /*考试性质*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS g ON a.RKJGID = g.ID /*任课教工ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS h ON a.CJLRJGID = h.ID /*成绩录入教工ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS db ON d.KSXS = db.DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dc ON d.SKFSM = dc.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS eb ON e.XQM = eb.DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS gb ON g.SFZJLXM = gb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS gc ON g.XBM = gc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS gd ON g.MZM = gd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ge ON g.XXM = ge.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS gf ON g.JKZKM = gf.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS gg ON g.HYZTM = gg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS gh ON g.ZZMMM = gh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS gi ON g.GATQWM = gi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS gj ON g.GJDQM = gj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gk ON g.CSDXZQHM = gk.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS gl ON g.XYZJM = gl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gm ON g.JZGHKSZDXZQHM = gm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS gn ON g.HKLBM = gn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS go ON g.BZLBM = go.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS gp ON g.JZGLBM = gp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS gq ON g.GWLBM = gq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS gr ON g.SFJZJS = gr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS gs ON g.SFSSXJS = gs.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS gt ON g.DQZTM = gt.DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS hb ON h.SFZJLXM = hb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS hc ON h.XBM = hc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS hd ON h.MZM = hd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS he ON h.XXM = he.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS hf ON h.JKZKM = hf.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS hg ON h.HYZTM = hg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS hh ON h.ZZMMM = hh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS hi ON h.GATQWM = hi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS hj ON h.GJDQM = hj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS hk ON h.CSDXZQHM = hk.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS hl ON h.XYZJM = hl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS hm ON h.JZGHKSZDXZQHM = hm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS hn ON h.HKLBM = hn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS ho ON h.BZLBM = ho.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS hp ON h.JZGLBM = hp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS hq ON h.GWLBM = hq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS hr ON h.SFJZJS = hr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS hs ON h.SFSSXJS = hs.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ht ON h.DQZTM = ht.DM /*当前状态码*/
GO
