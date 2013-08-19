
--发文处理子类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_03_01_FWCL_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[NGRID]--拟稿人ID
      ,a.[QFRID]--签发人ID
      ,a.[DJRID]--登记人ID
      ,a.[DZRID]--打字人ID
      ,a.[JDRID]--校对人ID
      ,a.[NGRGH]--拟稿人工号
      ,a.[NGRQ]--拟稿日期
      ,a.[QFRGH]--签发人工号
      ,a.[QFRQ]--签发日期
      ,a.[FSFW]--发送范围
      ,a.[FSFSM]--发送方式码
      ,a.[DJRGH]--登记人工号
      ,a.[DJRQ]--登记日期
      ,a.[FWJS]--发文件数
      ,a.[GWFWRQ]--公文发文日期
      ,a.[CLQK]--处理情况
      ,a.[DZRGH]--打字人工号
      ,a.[JDRGH]--校对人工号
      ,a.[FZFSM]--封装方式码
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件文号
      ,c.BT as c_WJJBSJ_BT--标题
      ,c.ZTC as c_WJJBSJ_ZTC--主题词
      ,c.MJM as c_WJJBSJ_MJM--密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--名称
      ,c.YS as c_WJJBSJ_YS--页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--说明
      ,c.ZW as c_WJJBSJ_ZW--正文
      ,c.FJ as c_WJJBSJ_FJ--附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--抄送单位
      ,d.SCHOOLID as d_USER_SCHOOLID--学校ID
      ,d.APPID as d_USER_APPID--应用ID
      ,d.PWD as d_USER_PWD--密码
      ,d.STATUS as d_USER_STATUS--用户状态
      ,d.USERTYPE as d_USER_USERTYPE--用户类别
      ,d.USERID as d_USER_USERID--用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--用户角色
      ,d.XM as d_USER_XM--姓名
      ,d.XB as d_USER_XB--性别
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--电子邮件
      ,d.LXDH as d_USER_LXDH--联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--用户创建时间
      ,e.SCHOOLID as e_USER_SCHOOLID--学校ID
      ,e.APPID as e_USER_APPID--应用ID
      ,e.PWD as e_USER_PWD--密码
      ,e.STATUS as e_USER_STATUS--用户状态
      ,e.USERTYPE as e_USER_USERTYPE--用户类别
      ,e.USERID as e_USER_USERID--用户ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--用户角色
      ,e.XM as e_USER_XM--姓名
      ,e.XB as e_USER_XB--性别
      ,e.QQ as e_USER_QQ--QQ
      ,e.DZYJ as e_USER_DZYJ--电子邮件
      ,e.LXDH as e_USER_LXDH--联系电话
      ,e.ZJDLSJ as e_USER_ZJDLSJ--最近一次登录时间
      ,e.DLCGCS as e_USER_DLCGCS--登录成功次数
      ,e.YHCJSJ as e_USER_YHCJSJ--用户创建时间
      ,f.SCHOOLID as f_USER_SCHOOLID--学校ID
      ,f.APPID as f_USER_APPID--应用ID
      ,f.PWD as f_USER_PWD--密码
      ,f.STATUS as f_USER_STATUS--用户状态
      ,f.USERTYPE as f_USER_USERTYPE--用户类别
      ,f.USERID as f_USER_USERID--用户ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--用户角色
      ,f.XM as f_USER_XM--姓名
      ,f.XB as f_USER_XB--性别
      ,f.QQ as f_USER_QQ--QQ
      ,f.DZYJ as f_USER_DZYJ--电子邮件
      ,f.LXDH as f_USER_LXDH--联系电话
      ,f.ZJDLSJ as f_USER_ZJDLSJ--最近一次登录时间
      ,f.DLCGCS as f_USER_DLCGCS--登录成功次数
      ,f.YHCJSJ as f_USER_YHCJSJ--用户创建时间
      ,g.SCHOOLID as g_USER_SCHOOLID--学校ID
      ,g.APPID as g_USER_APPID--应用ID
      ,g.PWD as g_USER_PWD--密码
      ,g.STATUS as g_USER_STATUS--用户状态
      ,g.USERTYPE as g_USER_USERTYPE--用户类别
      ,g.USERID as g_USER_USERID--用户ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--用户角色
      ,g.XM as g_USER_XM--姓名
      ,g.XB as g_USER_XB--性别
      ,g.QQ as g_USER_QQ--QQ
      ,g.DZYJ as g_USER_DZYJ--电子邮件
      ,g.LXDH as g_USER_LXDH--联系电话
      ,g.ZJDLSJ as g_USER_ZJDLSJ--最近一次登录时间
      ,g.DLCGCS as g_USER_DLCGCS--登录成功次数
      ,g.YHCJSJ as g_USER_YHCJSJ--用户创建时间
      ,h.SCHOOLID as h_USER_SCHOOLID--学校ID
      ,h.APPID as h_USER_APPID--应用ID
      ,h.PWD as h_USER_PWD--密码
      ,h.STATUS as h_USER_STATUS--用户状态
      ,h.USERTYPE as h_USER_USERTYPE--用户类别
      ,h.USERID as h_USER_USERID--用户ID
      ,h.ROLEIDLst as h_USER_ROLEIDLst--用户角色
      ,h.XM as h_USER_XM--姓名
      ,h.XB as h_USER_XB--性别
      ,h.QQ as h_USER_QQ--QQ
      ,h.DZYJ as h_USER_DZYJ--电子邮件
      ,h.LXDH as h_USER_LXDH--联系电话
      ,h.ZJDLSJ as h_USER_ZJDLSJ--最近一次登录时间
      ,h.DLCGCS as h_USER_DLCGCS--登录成功次数
      ,h.YHCJSJ as h_USER_YHCJSJ--用户创建时间
      ,i.MC as i_FSFS_MC--名称
      ,j.MC as j_GWFZFS_MC--名称

FROM dbo.EDU_OAXT_03_01_FWCL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.NGRID = d.LOGINNAME /*拟稿人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.QFRID = e.LOGINNAME /*签发人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.DJRID = f.LOGINNAME /*登记人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DZRID = g.LOGINNAME /*打字人ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS h ON a.JDRID = h.LOGINNAME /*校对人ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_FSFS AS i ON a.FSFSM = i.DM /*发送方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWFZFS AS j ON a.FZFSM = j.DM /*封装方式码*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/
GO
