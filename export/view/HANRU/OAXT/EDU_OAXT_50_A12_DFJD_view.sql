
--打分节点表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A12_DFJD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XMID]--项目ID
      ,a.[FJDID]--父节点ID
      ,a.[SFDFX]--是否打分项
      ,a.[JDMC]--节点名称
      ,a.[SFJCSJSZ]--是否继承上级设置
      ,a.[DFDXJDBMJH]--打分对象节点编码集合
      ,a.[DFJSGXIDLB]--打分角色关系ID列表
      ,a.[SHJSGXIDLB]--审核角色关系ID列表
      ,a.[DFFSID]--打分方式ID
      ,a.[DFDXCJ]--打分对象层级
      ,a.[DFPC]--打分频次
      ,a.[DFZB]--打分指标
      ,c.SCHOOLID as c_DFXM_SCHOOLID--打分项目表 学校ID
      ,c.XMMC as c_DFXM_XMMC--打分项目表 项目名称
      ,c.APPID as c_DFXM_APPID--打分项目表 所在应用ID
      ,d.SCHOOLID as d_DFJD_SCHOOLID--打分节点表 学校ID
      ,d.XMID as d_DFJD_XMID--打分节点表 项目ID
      ,d.FJDID as d_DFJD_FJDID--打分节点表 父节点ID
      ,d.SFDFX as d_DFJD_SFDFX--打分节点表 是否打分项
      ,d.JDMC as d_DFJD_JDMC--打分节点表 节点名称
      ,d.SFJCSJSZ as d_DFJD_SFJCSJSZ--打分节点表 是否继承上级设置
      ,d.DFDXJDBMJH as d_DFJD_DFDXJDBMJH--打分节点表 打分对象节点编码集合
      ,d.DFJSGXIDLB as d_DFJD_DFJSGXIDLB--打分节点表 打分角色关系ID列表
      ,d.SHJSGXIDLB as d_DFJD_SHJSGXIDLB--打分节点表 审核角色关系ID列表
      ,d.DFFSID as d_DFJD_DFFSID--打分节点表 打分方式ID
      ,d.DFDXCJ as d_DFJD_DFDXCJ--打分节点表 打分对象层级
      ,d.DFPC as d_DFJD_DFPC--打分节点表 打分频次
      ,d.DFZB as d_DFJD_DFZB--打分节点表 打分指标
      ,e.SCHOOLID as e_DFFS_SCHOOLID--打分方式表 学校ID
      ,e.XMID as e_DFFS_XMID--打分方式表 项目ID
      ,e.DFFSMC as e_DFFS_DFFSMC--打分方式表 打分方式名称
      ,e.DFLX as e_DFFS_DFLX--打分方式表 打分类型
      ,e.ZDZ as e_DFFS_ZDZ--打分方式表 最大值
      ,e.ZXZ as e_DFFS_ZXZ--打分方式表 最小值
      ,e.MRZ as e_DFFS_MRZ--打分方式表 默认值

FROM dbo.EDU_OAXT_50_A12_DFJD AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS d ON a.FJDID = d.ID /*父节点ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ AND a.XMID = d.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A13_DFFS AS e ON a.DFFSID = e.ID /*打分方式ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ AND a.XMID = e.XMID /*项目ID*/
GO
