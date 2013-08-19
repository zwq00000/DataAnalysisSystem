
--总体教学计划数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_01_ZTJXJH_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[JHBH]--计划编号
      ,a.[JHNJ]--计划年级
      ,a.[ZYXXID]--专业编号
      ,a.[JHZYMC]--计划专业名称
      ,a.[ZXFYQ]--总学分要求
      ,a.[JLNY]--建立年月
      ,a.[SYXZ]--适用学制
      ,a.[PYMB]--培养目标
      ,a.[SFKY]--是否可用
      ,a.[FJ]--附件
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_ZZNJ_SCHOOLID--学校名
      ,c.NJMC as c_ZZNJ_NJMC--年级名称
      ,c.SSNF as c_ZZNJ_SSNF--所属年份
      ,c.NJZT as c_ZZNJ_NJZT--年级状态
      ,cb.MC as c_ZZNJ_NJZT_MC--名称
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--学校名
      ,d.ZYDM as d_ZYXX_ZYDM--专业代码
      ,db.ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--专业目录类别
      ,db.MC as d_ZYXX_ZYDM_MC--名称
      ,d.ZYMC as d_ZYXX_ZYMC--专业名称
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--专业英文名称
      ,d.XZ as d_ZYXX_XZ--学制
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--专业方向名称
      ,d.ZYJC as d_ZYXX_ZYJC--专业简称
      ,d.JLNY as d_ZYXX_JLNY--建立年月
      ,d.ZYJSS as d_ZYXX_ZYJSS--专业教师数
      ,d.KSJGH as d_ZYXX_KSJGH--开设机构号
      ,d.ZXF as d_ZYXX_ZXF--总学分
      ,d.SSZYML as d_ZYXX_SSZYML--所属专业目录
      ,dc.MC as d_ZYXX_SSZYML_MC--名称
      ,d.ZYLB as d_ZYXX_ZYLB--专业类别名称
      ,e.MC as e_SKFS_MC--名称

FROM dbo.EDU_ZZJX_03_01_ZTJXJH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS c ON a.JHNJ = c.NJDM /*计划年级*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*专业编号*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS e ON a.SFKY = e.DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.NJZT = cb.DM /*年级状态*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS db ON d.ZYDM = db.DM /*专业代码*/ AND d.SSZYML = db.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS dc ON d.SSZYML = dc.DM /*所属专业目录*/
GO
