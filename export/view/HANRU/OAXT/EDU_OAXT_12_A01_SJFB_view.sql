
--数据发布类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_12_A01_SJFB_DISP]
AS
SELECT a.[ID]--数据发布ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[FBRID]--发布人ID
      ,a.[FBBZRID]--发布批准人ID
      ,a.[FBH]--发布号
      ,a.[XXBT]--数据标题
      ,a.[FBLMH]--发布栏目号
      ,a.[SJNR]--数据内容
      ,a.[FJS]--附件数
      ,a.[FBRQ]--发布日期
      ,a.[FBDW]--发布单位号
      ,a.[FBRGH]--发布人工号
      ,a.[FBFW]--发布范围
      ,a.[FBBZRH]--发布批准人号
      ,a.[SJZT]--数据状态
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,c.URL as c_WZPZ_URL--网站配置 完整网址
      ,c.YS as c_WZPZ_YS--网站配置 页首
      ,c.YW as c_WZPZ_YW--网站配置 页尾

FROM dbo.EDU_OAXT_12_A01_SJFB AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO
