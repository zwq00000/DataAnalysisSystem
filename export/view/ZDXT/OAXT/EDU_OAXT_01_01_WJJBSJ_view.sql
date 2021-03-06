
--文件基本数据类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_01_01_WJJBSJ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[ID]--文件ID
      ,a.[WJBH]--文件编号
      ,a.[WJWH]--文件文号
      ,a.[BT]--标题
      ,a.[ZTC]--主题词
      ,a.[MJM]--密级码
      ,a.[JJCDM]--紧急程度码
      ,a.[YS]--页数
      ,a.[WJFLM]--文件分类码
      ,a.[ZW]--正文
      ,a.[FJ]--附件
      ,a.[FWRQ]--发文日期
      ,a.[CSDW]--抄送单位
      ,c.HYPYDM as c_WXBMZJ_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,c.HZDM as c_WXBMZJ_HZDM--文献保密等级代码与标识 汉字代码
      ,c.MC as c_WXBMZJ_MC--文献保密等级代码与标识 名称
      ,d.MC as d_JJCD_MC--紧急程度代码表 名称
      ,e.MC as e_WJFL_MC--文件分类代码表 名称
      ,e.SM as e_WJFL_SM--文件分类代码表 说明

FROM dbo.EDU_OAXT_01_01_WJJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS c ON a.MJM = c.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS d ON a.JJCDM = d.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS e ON a.WJFLM = e.DM /*文件分类码*/
GO
