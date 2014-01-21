--空间名：EDU_ZXJZ  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_01_01_JZGJBSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_01_01_JZGJBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_01_A02_JZGNLZS')
            and   type = 'U')
   drop table EDU_ZXJZ_01_A02_JZGNLZS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_02_A01_XNGWSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_02_A01_XNGWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_07_02_RKSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_07_02_RKSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_12_A01_XCLX')
            and   type = 'U')
   drop table EDU_ZXJZ_12_A01_XCLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_12_A02_XC')
            and   type = 'U')
   drop table EDU_ZXJZ_12_A02_XC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_12_A03_XCMYFFPC')
            and   type = 'U')
   drop table EDU_ZXJZ_12_A03_XCMYFFPC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_17_A01_DYXX')
            and   type = 'U')
   drop table EDU_ZXJZ_17_A01_DYXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_17_A02_DFSJJL')
            and   type = 'U')
   drop table EDU_ZXJZ_17_A02_DFSJJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_17_A03_DZBSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_17_A03_DZBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_17_A04_DZBZWSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_17_A04_DZBZWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_17_A05_DZBCYXX')
            and   type = 'U')
   drop table EDU_ZXJZ_17_A05_DZBCYXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_17_A06_DZBHDXX')
            and   type = 'U')
   drop table EDU_ZXJZ_17_A06_DZBHDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_18_A03_JSDRBZRJL')
            and   type = 'U')
   drop table EDU_ZXJZ_18_A03_JSDRBZRJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_19_A01_JJFFJL')
            and   type = 'U')
   drop table EDU_ZXJZ_19_A01_JJFFJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A01_XSPJDFFS')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A01_XSPJDFFS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A02_XSPJDFXM')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A02_XSPJDFXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A03_XSPJTM')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A03_XSPJTM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A04_XSPJKP')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A04_XSPJKP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A05_XSPJKPTM')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A05_XSPJKPTM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A06_XSPJKPBJ')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A06_XSPJKPBJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A07_XSPJKPJG')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A07_XSPJKPJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A08_XSPJTJJL')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A08_XSPJTJJL
go
--教职工基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_01_01_JZGJBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_01_01_JZGJBSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[GH]  nvarchar(20)  NOT NULL,--工号
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[YWXM]  nvarchar(60)  NULL,--英文姓名
	[XMPY]  nvarchar(60)  NULL,--姓名拼音
	[CYM]  nvarchar(36)  NULL,--曾用名
	[XBM]  nvarchar(1)  NOT NULL,--性别码
	[CSRQ]  nvarchar(8)  NOT NULL,--出生日期
	[CSDM]  nvarchar(6)  NOT NULL,--出生地码
	[JG]  nvarchar(20)  NULL,--籍贯
	[MZM]  nvarchar(2)  NULL,--民族码
	[GJDQM]  nvarchar(3)  NOT NULL,--国籍/地区码
	[SFZJLXM]  nvarchar(1)  NOT NULL,--身份证件类型码
	[SFZJH]  nvarchar(20)  NOT NULL,--身份证件号
	[HYZKM]  nvarchar(2)  NULL,--婚姻状况码
	[GATQWM]  nvarchar(2)  NULL,--港澳台侨外码
	[ZZMMM]  nvarchar(2)  NOT NULL,--政治面貌码
	[JKZKM]  nvarchar(1)  NULL,--健康状况码
	[XYZJM]  nvarchar(2)  NULL,--信仰宗教码
	[XXM]  nvarchar(1)  NULL,--血型码
	[ZP]  nvarchar(200)  NULL,--照片
	[SFZJYXQ]  nvarchar(8)  NULL,--身份证件有效期
	[JGH]  nvarchar(40)  NOT NULL,--机构号
	[JTZZ]  nvarchar(180)  NULL,--家庭住址
	[XZZ]  nvarchar(180)  NULL,--现住址
	[HKSZD]  nvarchar(180)  NULL,--户口所在地
	[HKXZM]  nvarchar(1)  NULL,--户口性质码
	[XLM]  nvarchar(2)  NOT NULL,--学历码
	[GZNY]  nvarchar(6)  NULL,--参加工作年月
	[LXNY]  nvarchar(6)  NULL,--来校年月
	[CJNY]  nvarchar(6)  NULL,--从教年月
	[BZLBM]  nvarchar(1)  NOT NULL,--编制类别码
	[DABH]  nvarchar(10)  NOT NULL,--档案编号
	[DAWB]  text  NULL,--档案文本
	[TXDZ]  nvarchar(180)  NULL,--通信地址
	[LXDH]  nvarchar(30)  NULL,--联系电话
	[YZBM]  nvarchar(6)  NULL,--邮政编码
	[DZXX]  nvarchar(40)  NULL,--电子信箱
	[ZYDZ]  nvarchar(60)  NULL,--主页地址
	[TC]  text  NULL,--特长
	[GWZYM]  nvarchar(2)  NOT NULL,--岗位职业码
	[ZYRKXD]  nvarchar(1)  NOT NULL,--主要任课学段
CONSTRAINT [PK_EDU_ZXJZ_01_01_JZGJBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教职工能力证书数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_01_A02_JZGNLZS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_01_A02_JZGNLZS](
	[SCHOOLID]  int  NOT NULL,--学校名
	[JZGJBSJID]  int  NOT NULL,--教职工ID
	[ZSMC]  nvarchar(40)  NOT NULL,--证书名称
	[ZSBH]  nvarchar(20)  NULL,--证书编号
	[ZSBFDW]  nvarchar(60)  NULL,--证书颁发单位
	[ZSBFRQ]  nvarchar(8)  NOT NULL,--证书颁发日期
	[ZSBZ]  text  NULL,--证书备注
	[SFSZYZGZS]  nvarchar(1)  NOT NULL,--是否是职业资格证书
	[JJ]  text  NULL,--简介
CONSTRAINT [PK_EDU_ZXJZ_01_A02_JZGNLZS] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JZGJBSJID] ASC,
	[ZSMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--校内岗位数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_02_A01_XNGWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_02_A01_XNGWSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[GWID]  int  NOT NULL,--岗位表ID
	[JZGJBSJID]  int  NOT NULL,--教职工基本数据子类表
	[GWQSNY]  nvarchar(6)  NOT NULL,--岗位起始年月
	[GWJSNY]  nvarchar(6)  NOT NULL,--岗位结束年月
	[SFZG]  nvarchar(1)  NOT NULL,--是否在岗
	[ZWMC]  nvarchar(10)  NOT NULL,--职务名称
	[JGH]  nvarchar(10)  NOT NULL,--机构号
	[XQID]  int  NOT NULL,--学期ID
CONSTRAINT [PK_EDU_ZXJZ_02_A01_XNGWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--任课数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_07_02_RKSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_07_02_RKSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[JZGJBSJID]  int  NOT NULL,--教职工基本数据子类表
	[RKKCH]  nvarchar(10)  NOT NULL,--任课课程号
	[RKQSNY]  nvarchar(6)  NOT NULL,--任课起始年月
	[RKZZNY]  nvarchar(6)  NOT NULL,--任课终止年月
	[RKZXS]  decimal(3, 0)  NOT NULL,--任课总学时
	[RKXDM]  nvarchar(1)  NOT NULL,--任课学段码
	[RKJSM]  nvarchar(1)  NOT NULL,--任课角色码
	[SKBJ]  nvarchar(10)  NOT NULL,--授课班级
	[SKRS]  decimal(4, 0)  NOT NULL,--授课人数
	[ZKS]  int  NOT NULL,--周课时
	[SFLT]  nvarchar(1)  NOT NULL,--是否连堂
	[NJID]  nvarchar(10)  NOT NULL,--年级号
	[XQID]  int  NOT NULL,--学期
	[XNID]  int  NOT NULL,--学年
CONSTRAINT [PK_EDU_ZXJZ_07_02_RKSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--薪酬类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_12_A01_XCLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_12_A01_XCLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XCLXMC]  nvarchar(30)  NOT NULL,--类型名称
CONSTRAINT [PK_EDU_ZXJZ_12_A01_XCLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--薪酬表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_12_A02_XC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_12_A02_XC](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[JZGJBSJID]  int  NOT NULL,--教工基本信息ID
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[XCLXID]  int  NOT NULL,--薪酬类型ID
	[JE]  decimal(8, 2)  NOT NULL,--金额
	[FFSJ]  datetime  NOT NULL,--发放时间
	[FFPCID]  int  NOT NULL,--发放批次ID
CONSTRAINT [PK_EDU_ZXJZ_12_A02_XC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--薪酬每月发放批次表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_12_A03_XCMYFFPC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_12_A03_XCMYFFPC](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[PCMC]  nvarchar(30)  NOT NULL,--批次名称
CONSTRAINT [PK_EDU_ZXJZ_12_A03_XCMYFFPC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--党员信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_17_A01_DYXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_17_A01_DYXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[JZGJBSJID]  int  NOT NULL,--教工基本信息ID
	[RDSJ]  datetime  NOT NULL,--入党时间
	[RDDD]  nvarchar(100)  NOT NULL,--入党地点
	[RDJSR]  nvarchar(100)  NOT NULL,--入党介绍人
	[DQZT]  int  NOT NULL,--当前状态
	[TJJSID]  int  NOT NULL,--添加教师ID
	[TJSJ]  datetime  NOT NULL,--添加时间
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZXJZ_17_A01_DYXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--党费收缴记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_17_A02_DFSJJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_17_A02_DFSJJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XQID]  int  NOT NULL,--学期ID
	[DYXXID]  int  NOT NULL,--党员信息ID
	[JZGJBSJID]  int  NOT NULL,--教工基本信息ID
	[SJJE]  decimal(8, 2)  NOT NULL,--收缴金额
	[TJJSID]  int  NOT NULL,--添加教师ID
	[TJSJ]  datetime  NULL,--添加时间
CONSTRAINT [PK_EDU_ZXJZ_17_A02_DFSJJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--党支部数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_17_A03_DZBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_17_A03_DZBSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[DZBMC]  nvarchar(50)  NOT NULL,--党支部名称
	[SS]  nvarchar(50)  NOT NULL,--所属
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZXJZ_17_A03_DZBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--党支部职位数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_17_A04_DZBZWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_17_A04_DZBZWSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[DZBID]  int  NOT NULL,--党支部ID
	[ZWMC]  nvarchar(50)  NOT NULL,--职位名称
	[GZNR]  text  NOT NULL,--工作内容
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZXJZ_17_A04_DZBZWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--党支部成员信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_17_A05_DZBCYXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_17_A05_DZBCYXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[DYXXID]  int  NOT NULL,--党员信息ID
	[JZGJBSJID]  int  NOT NULL,--教工基本信息ID
	[DZBID]  int  NOT NULL,--党支部ID
	[DZBZWID]  int  NOT NULL,--党支部职位ID
	[TJJSID]  int  NOT NULL,--添加教师ID
	[TJSJ]  datetime  NULL,--添加时间
CONSTRAINT [PK_EDU_ZXJZ_17_A05_DZBCYXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--党支部活动信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_17_A06_DZBHDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_17_A06_DZBHDXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XQID]  int  NOT NULL,--学期ID
	[DZBID]  int  NOT NULL,--党支部ID
	[HDMC]  nvarchar(50)  NOT NULL,--活动名称
	[HDNR]  text  NOT NULL,--活动内容
	[SCJSID]  int  NOT NULL,--上传教师ID
	[SCSJ]  datetime  NOT NULL,--上传时间
	[HDSJ]  datetime  NOT NULL,--活动时间
CONSTRAINT [PK_EDU_ZXJZ_17_A06_DZBHDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教师担任班主任记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_18_A03_JSDRBZRJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_18_A03_JSDRBZRJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[JZGJBSJID]  int  NOT NULL,--教职工ID
	[DRBJ]  nvarchar(50)  NOT NULL,--担任班级
	[DRSJ]  decimal(5, 2)  NOT NULL,--担任时间
	[BZ]  nvarchar(500)  NULL,--备注
CONSTRAINT [PK_EDU_ZXJZ_18_A03_JSDRBZRJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--奖金发放记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_19_A01_JJFFJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_19_A01_JJFFJL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[JZGJBSJID]  int  NOT NULL,--教工基本信息ID
	[JJMC]  nvarchar(50)  NOT NULL,--奖金名称
	[JE]  decimal(8, 2)  NOT NULL,--金额
	[FFSJ]  datetime  NOT NULL,--发放时间
	[SFTZG]  nvarchar(1)  NOT NULL,--是否通知过
	[BZ]  nvarchar(200)  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZXJZ_19_A01_JJFFJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生评教打分方式表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A01_XSPJDFFS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A01_XSPJDFFS](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[DFFSMC]  nvarchar(50)  NOT NULL,--打分方式名称
	[ZT]  int  NOT NULL,--状态
CONSTRAINT [PK_EDU_ZXJZ_20_A01_XSPJDFFS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生评教打分项目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A02_XSPJDFXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A02_XSPJDFXM](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[DFFSID]  int  NOT NULL,--打分方式ID
	[DFXMMC]  nvarchar(50)  NOT NULL,--打分项目名称
	[FZ]  int  NOT NULL,--分值
CONSTRAINT [PK_EDU_ZXJZ_20_A02_XSPJDFXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生评教题目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A03_XSPJTM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A03_XSPJTM](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[DFFSID]  int  NOT NULL,--打分方式ID
	[PJXM]  nvarchar(50)  NOT NULL,--评教项目
	[PJZB]  nvarchar(300)  NOT NULL,--评教指标
	[ZT]  int  NOT NULL,--状态
CONSTRAINT [PK_EDU_ZXJZ_20_A03_XSPJTM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生评教考评表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A04_XSPJKP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A04_XSPJKP](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KPMC]  nvarchar(50)  NOT NULL,--考评名称
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[ZT]  int  NOT NULL,--状态
CONSTRAINT [PK_EDU_ZXJZ_20_A04_XSPJKP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生评教考评题目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A05_XSPJKPTM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A05_XSPJKPTM](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KPID]  int  NOT NULL,--考评ID
	[TMID]  int  NOT NULL,--考评题目ID
CONSTRAINT [PK_EDU_ZXJZ_20_A05_XSPJKPTM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生评教考评班级表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A06_XSPJKPBJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A06_XSPJKPBJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KPID]  int  NOT NULL,--考评ID
	[BJMC]  nvarchar(50)  NOT NULL,--班级名称
	[BPJGIDLB]  text  NOT NULL,--被评教工ID列表
	[BPJGXMLB]  text  NOT NULL,--被评教工姓名列表
	[DYKCMCLB]  text  NOT NULL,--对应课程名称列表
	[YPRS]  int  NOT NULL,--应评人数
	[SBM]  nvarchar(9)  NOT NULL,--识别码
	[KQSJ]  datetime  NOT NULL,--开启时间
	[ZDGBSJ]  int  NOT NULL,--自动关闭时间
	[ZT]  int  NOT NULL,--状态
CONSTRAINT [PK_EDU_ZXJZ_20_A06_XSPJKPBJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生评教考评结果表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A07_XSPJKPJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A07_XSPJKPJG](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KPTMID]  int  NOT NULL,--考评题目ID
	[KPBJID]  int  NOT NULL,--考评班级ID
	[JZGJBSJID]  int  NOT NULL,--教职工ID
	[IP]  nvarchar(50)  NOT NULL,--IP地址
	[FZ]  int  NOT NULL,--分值
CONSTRAINT [PK_EDU_ZXJZ_20_A07_XSPJKPJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生评教提交记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A08_XSPJTJJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A08_XSPJTJJL](
	[ID]  int  identity,--编号
	[KPBJID]  int  NOT NULL,--考评班级ID
	[SBM]  nvarchar(9)  NOT NULL,--识别码
	[IP]  nvarchar(50)  NOT NULL,--IP地址
	[TJSJ]  datetime  NOT NULL,--提交时间
CONSTRAINT [PK_EDU_ZXJZ_20_A08_XSPJTJJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工基本数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'YWXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XMPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'曾用名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生地码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'籍贯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民族码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国籍/地区码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件类型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'婚姻状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HYZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'港澳台侨外码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GATQWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'政治面貌码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'健康状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信仰宗教码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XYZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'血型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件有效期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJYXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JTZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户口所在地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HKSZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户口性质码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HKXZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参加工作年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GZNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来校年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'LXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'从教年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CJNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编制类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'BZLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'档案编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DABH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'档案文本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DAWB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通信地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'TXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'YZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主页地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'TC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位职业码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GWZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主要任课学段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZYRKXD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工能力证书数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'ZSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'ZSBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书颁发单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'ZSBFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书颁发日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'ZSBFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'ZSBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是职业资格证书' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'SFSZYZGZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'JJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校内岗位数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工基本数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位起始年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWQSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位结束年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWJSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否在岗' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'SFZG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'ZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工基本数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKKCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课起始年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKQSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课终止年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKZZNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课总学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课学段码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课角色码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKJSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授课班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'SKBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授课人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'SKRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周课时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'ZKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否连堂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'SFLT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'薪酬类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A01_XCLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A01_XCLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A01_XCLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A01_XCLX', @level2type=N'COLUMN',@level2name=N'XCLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'薪酬表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教工基本信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'薪酬类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'XCLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'JE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发放时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'FFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发放批次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'FFPCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'薪酬每月发放批次表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A03_XCMYFFPC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A03_XCMYFFPC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A03_XCMYFFPC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A03_XCMYFFPC', @level2type=N'COLUMN',@level2name=N'PCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党员信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教工基本信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入党时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'RDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入党地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'RDDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入党介绍人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'RDJSR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党费收缴记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党员信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'DYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教工基本信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收缴金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'SJJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党支部数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A03_DZBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A03_DZBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A03_DZBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党支部名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A03_DZBSJ', @level2type=N'COLUMN',@level2name=N'DZBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A03_DZBSJ', @level2type=N'COLUMN',@level2name=N'SS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A03_DZBSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党支部职位数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A04_DZBZWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A04_DZBZWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A04_DZBZWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党支部ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A04_DZBZWSJ', @level2type=N'COLUMN',@level2name=N'DZBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A04_DZBZWSJ', @level2type=N'COLUMN',@level2name=N'ZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A04_DZBZWSJ', @level2type=N'COLUMN',@level2name=N'GZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A04_DZBZWSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党支部成员信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党员信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'DYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教工基本信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党支部ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'DZBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党支部职位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'DZBZWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党支部活动信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党支部ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'DZBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'HDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'HDNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'HDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师担任班主任记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_18_A03_JSDRBZRJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_18_A03_JSDRBZRJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_18_A03_JSDRBZRJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_18_A03_JSDRBZRJL', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'担任班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_18_A03_JSDRBZRJL', @level2type=N'COLUMN',@level2name=N'DRBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'担任时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_18_A03_JSDRBZRJL', @level2type=N'COLUMN',@level2name=N'DRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_18_A03_JSDRBZRJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖金发放记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教工基本信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖金名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'JJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'JE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发放时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'FFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否通知过' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'SFTZG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生评教打分方式表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A01_XSPJDFFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A01_XSPJDFFS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A01_XSPJDFFS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分方式名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A01_XSPJDFFS', @level2type=N'COLUMN',@level2name=N'DFFSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A01_XSPJDFFS', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生评教打分项目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A02_XSPJDFXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A02_XSPJDFXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A02_XSPJDFXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分方式ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A02_XSPJDFXM', @level2type=N'COLUMN',@level2name=N'DFFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A02_XSPJDFXM', @level2type=N'COLUMN',@level2name=N'DFXMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A02_XSPJDFXM', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生评教题目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A03_XSPJTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A03_XSPJTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A03_XSPJTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分方式ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A03_XSPJTM', @level2type=N'COLUMN',@level2name=N'DFFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评教项目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A03_XSPJTM', @level2type=N'COLUMN',@level2name=N'PJXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评教指标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A03_XSPJTM', @level2type=N'COLUMN',@level2name=N'PJZB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A03_XSPJTM', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生评教考评表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A04_XSPJKP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A04_XSPJKP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A04_XSPJKP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A04_XSPJKP', @level2type=N'COLUMN',@level2name=N'KPMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A04_XSPJKP', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A04_XSPJKP', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A04_XSPJKP', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生评教考评题目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A05_XSPJKPTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A05_XSPJKPTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A05_XSPJKPTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A05_XSPJKPTM', @level2type=N'COLUMN',@level2name=N'KPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评题目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A05_XSPJKPTM', @level2type=N'COLUMN',@level2name=N'TMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生评教考评班级表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'KPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'BJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被评教工ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'BPJGIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被评教工姓名列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'BPJGXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对应课程名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'DYKCMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应评人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'YPRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'识别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'SBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开启时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'KQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自动关闭时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'ZDGBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生评教考评结果表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评题目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG', @level2type=N'COLUMN',@level2name=N'KPTMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评班级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG', @level2type=N'COLUMN',@level2name=N'KPBJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生评教提交记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A08_XSPJTJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A08_XSPJTJJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评班级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A08_XSPJTJJL', @level2type=N'COLUMN',@level2name=N'KPBJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'识别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A08_XSPJTJJL', @level2type=N'COLUMN',@level2name=N'SBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A08_XSPJTJJL', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提交时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A08_XSPJTJJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
