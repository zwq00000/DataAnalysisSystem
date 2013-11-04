
--值周周次表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A06_ZZZC_DISP]
AS
SELECT a.[ID]--周次表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCM]--周次名
      ,a.[XQKSRQ]--开始日期
      ,a.[XQJSRQ]--结束日期
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期

FROM dbo.EDU_ZXDY_04_A06_ZZZC AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/
GO
