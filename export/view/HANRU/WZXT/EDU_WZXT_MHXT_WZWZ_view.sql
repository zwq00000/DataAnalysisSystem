
--网站文章
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZWZ_DISP]
AS
SELECT a.[ID]--网站文章ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TYPENAME]--类型名称
      ,a.[LMID]--栏目
      ,a.[TITLE]--标题
      ,a.[PUBLISHERNAME]--发布人
      ,a.[AUTHOR]--作者
      ,a.[AUTHORDEPART]--作者部门
      ,a.[PUBLISHDATE]--发布时间
      ,a.[CONTENT]--内容
      ,a.[URL]--链接
      ,a.[IMAGEURL]--图片
      ,a.[ATTACHMENTNAME]--附件名
      ,a.[ATTACHMENT]--附件
      ,a.[CHICKNUB]--点击量
      ,a.[AUDITSTATU]--审核状态
      ,a.[AUDITOR]--审核人ID
      ,a.[AUDITORNAME]--审核人
      ,a.[AUDITTIME]--审核时间
      ,a.[REMARK]--备注
      ,a.[SUMMARY]--摘要
      ,a.[DISPLAYTYPE]--是否显示
      ,a.[OPENFLAG]--内外网
      ,a.[LLQX]--浏览权限
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,b.XNID as b_SCHOOL_XNID--学校配置表 学年ID
      ,b.XQID as b_SCHOOL_XQID--学校配置表 学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--学校配置表 匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--学校配置表 日志级别
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,d.SCHOOLID as d_WZLM_SCHOOLID--网站栏目（导航） 学校名
      ,d.WEBID as d_WZLM_WEBID--网站栏目（导航） 网站ID
      ,d.LMSHOWSTYLE as d_WZLM_LMSHOWSTYLE--网站栏目（导航） 栏目使用类型
      ,d.NAME as d_WZLM_NAME--网站栏目（导航） 栏目名称
      ,d.URL as d_WZLM_URL--网站栏目（导航） 栏目链接
      ,d.IMAGEURL as d_WZLM_IMAGEURL--网站栏目（导航） 图片链接
      ,d.DEPTH as d_WZLM_DEPTH--网站栏目（导航） 层级
      ,d.PID as d_WZLM_PID--网站栏目（导航） 父目录
      ,d.LISTSHOWSTYLE as d_WZLM_LISTSHOWSTYLE--网站栏目（导航） 列表显示型式
      ,d.ORDERTYPE as d_WZLM_ORDERTYPE--网站栏目（导航） 排序方式
      ,d.SHOWNUMBER as d_WZLM_SHOWNUMBER--网站栏目（导航） 显示个数
      ,d.OPENFLAG as d_WZLM_OPENFLAG--网站栏目（导航） 内外网
      ,d.LLQX as d_WZLM_LLQX--网站栏目（导航） 浏览权限

FROM dbo.EDU_WZXT_MHXT_WZWZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZLM AS d ON a.LMID = d.ID /*栏目*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO
