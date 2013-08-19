
--值周小结表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_06_A01_ZZXJ_DISP]
AS
SELECT a.[ID]--值周小结表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[SZDS]--上周大事
      ,a.[ZZJCQKFK]--值周检查情况反馈
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_XQ_SCHOOLID--学校名
      ,c.XNID as c_XQ_XNID--学年
      ,c.XQM as c_XQ_XQM--学期码
      ,cb.MC as c_XQ_XQM_MC--名称
      ,c.XQMC as c_XQ_XQMC--学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期结束日期
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--学校ID
      ,d.XQID as d_ZZZC_XQID--学期ID
      ,d.ZCM as d_ZZZC_ZCM--周次名
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--开始日期
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--结束日期

FROM dbo.EDU_ZXDY_06_A01_ZZXJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*周次ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/
GO
