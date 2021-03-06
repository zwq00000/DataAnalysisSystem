
--附加记录表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A17_FJJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XMID]--项目ID
      ,a.[DFJDID]--打分节点ID
      ,a.[DFPCID]--打分批次ID
      ,a.[DFJGID]--打分结果ID
      ,a.[FJZDID]--附加字段ID
      ,a.[FJZ]--附加值
      ,c.SCHOOLID as c_DFXM_SCHOOLID--打分项目表 学校ID
      ,c.XMMC as c_DFXM_XMMC--打分项目表 项目名称
      ,c.APPID as c_DFXM_APPID--打分项目表 所在应用ID
      ,d.SCHOOLID as d_DFJD_SCHOOLID--打分节点表 学校ID
      ,d.XMID as d_DFJD_XMID--打分节点表 项目ID
      ,d.DLID as d_DFJD_DLID--打分节点表 大类ID
      ,d.FJDID as d_DFJD_FJDID--打分节点表 父节点ID
      ,d.SFDFX as d_DFJD_SFDFX--打分节点表 是否打分项
      ,d.JDMC as d_DFJD_JDMC--打分节点表 节点名称
      ,d.SFJCSJSZ as d_DFJD_SFJCSJSZ--打分节点表 是否继承上级设置
      ,d.DFDXJDBMJH as d_DFJD_DFDXJDBMJH--打分节点表 打分对象节点编码集合
      ,d.DFJSLBIDLB as d_DFJD_DFJSLBIDLB--打分节点表 打分角色类别ID列表
      ,d.SHJSLBIDLB as d_DFJD_SHJSLBIDLB--打分节点表 审核角色类别ID列表
      ,d.DFFSID as d_DFJD_DFFSID--打分节点表 打分方式ID
      ,d.DFDXCJ as d_DFJD_DFDXCJ--打分节点表 打分对象层级
      ,d.DFPC as d_DFJD_DFPC--打分节点表 打分频次
      ,d.DFZB as d_DFJD_DFZB--打分节点表 打分指标
      ,d.DFDXJDMCLB as d_DFJD_DFDXJDMCLB--打分节点表 打分对象节点名称列表
      ,d.DFJSLBMCLB as d_DFJD_DFJSLBMCLB--打分节点表 打分角色类别名称列表
      ,d.SHJSLBMCLB as d_DFJD_SHJSLBMCLB--打分节点表 审核角色类别名称列表
      ,d.DFDXCJMC as d_DFJD_DFDXCJMC--打分节点表 打分对象层级名称
      ,d.CKJSLBIDLB as d_DFJD_CKJSLBIDLB--打分节点表 查看角色类别ID列表
      ,d.CKJSLBMCLB as d_DFJD_CKJSLBMCLB--打分节点表 查看角色类别名称列表
      ,d.SFPLDF as d_DFJD_SFPLDF--打分节点表 是否批量打分
      ,d.XQKBFDW as d_DFJD_XQKBFDW--打分节点表 向前可补分单位
      ,d.XHYDFDW as d_DFJD_XHYDFDW--打分节点表 向后预打分单位
      ,e.SCHOOLID as e_DFPC_SCHOOLID--打分批次表 学校ID
      ,e.XMID as e_DFPC_XMID--打分批次表 项目ID
      ,e.DFDLID as e_DFPC_DFDLID--打分批次表 打分大类ID
      ,e.DFJDID as e_DFPC_DFJDID--打分批次表 打分节点ID
      ,e.XQID as e_DFPC_XQID--打分批次表 学期ID
      ,e.DFPCMC as e_DFPC_DFPCMC--打分批次表 打分批次名称
      ,e.CKSJ as e_DFPC_CKSJ--打分批次表 参考时间
      ,e.TJSJ as e_DFPC_TJSJ--打分批次表 添加时间
      ,f.SCHOOLID as f_DFJG_SCHOOLID--打分结果表 学校ID
      ,f.XMID as f_DFJG_XMID--打分结果表 项目ID
      ,f.DFDLID as f_DFJG_DFDLID--打分结果表 打分大类ID
      ,f.DFJDID as f_DFJG_DFJDID--打分结果表 打分节点ID
      ,f.DFPCID as f_DFJG_DFPCID--打分结果表 打分批次ID
      ,f.XQID as f_DFJG_XQID--打分结果表 学期ID
      ,f.BDFDXBM as f_DFJG_BDFDXBM--打分结果表 被打分对象编码
      ,f.BDFDXMC as f_DFJG_BDFDXMC--打分结果表 被打分对象名称
      ,f.DFXXID as f_DFJG_DFXXID--打分结果表 打分选项ID
      ,f.WBZ as f_DFJG_WBZ--打分结果表 文本值
      ,f.FZ as f_DFJG_FZ--打分结果表 分值
      ,f.DFYHID as f_DFJG_DFYHID--打分结果表 打分用户ID
      ,f.CKSJ as f_DFJG_CKSJ--打分结果表 参考时间
      ,f.TJSJ as f_DFJG_TJSJ--打分结果表 添加时间
      ,f.SHZT as f_DFJG_SHZT--打分结果表 审核状态
      ,f.SHJLID as f_DFJG_SHJLID--打分结果表 审核记录ID
      ,f.CKSJMC as f_DFJG_CKSJMC--打分结果表 参考时间名称
      ,g.SCHOOLID as g_FJZD_SCHOOLID--附加字段表 学校ID
      ,g.XMID as g_FJZD_XMID--附加字段表 项目ID
      ,g.DFJDID as g_FJZD_DFJDID--附加字段表 打分节点ID
      ,g.ZDMC as g_FJZD_ZDMC--附加字段表 字段名称
      ,g.MRZ as g_FJZD_MRZ--附加字段表 默认值
      ,g.PLSX as g_FJZD_PLSX--附加字段表 排列顺序

FROM dbo.EDU_OAXT_50_A17_FJJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS d ON a.DFJDID = d.ID /*打分节点ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ AND a.XMID = d.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A19_DFPC AS e ON a.DFPCID = e.ID /*打分批次ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ AND a.XMID = e.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A15_DFJG AS f ON a.DFJGID = f.ID /*打分结果ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ AND a.XMID = f.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A16_FJZD AS g ON a.FJZDID = g.ID /*附加字段ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ AND a.XMID = g.XMID /*项目ID*/
GO
