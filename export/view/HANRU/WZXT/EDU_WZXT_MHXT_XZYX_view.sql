
--校长邮箱
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_XZYX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[WEBID]--网站ID
      ,a.[LXMC]--类型名称
      ,a.[XM]--姓名
      ,a.[XB]--性别
      ,a.[EMAIL]--Email地址
      ,a.[LXDH]--联系电话
      ,a.[LXDZ]--联系地址
      ,a.[JTDZ]--家庭地址
      ,a.[YZBM]--邮政编码
      ,a.[BT]--标题
      ,a.[ZW]--正文
      ,a.[FJRIP]--发件人IP
      ,a.[FJSJ]--发件时间
      ,a.[HFZT]--回复状态
      ,a.[HFYHID]--回复用户ID
      ,a.[HFSJ]--回复时间
      ,a.[HFNR]--回复内容
      ,a.[SFZYXS]--是否主页显示
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,c.URL as c_WZPZ_URL--网站配置 完整网址
      ,c.YS as c_WZPZ_YS--网站配置 页首
      ,c.YW as c_WZPZ_YW--网站配置 页尾
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,'' as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,d.YHRY as d_USER_YHRY--应用系统用户表 用户荣誉
      ,d.YHJF as d_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_WZXT_MHXT_XZYX AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.HFYHID = d.LOGINNAME /*回复用户ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO
