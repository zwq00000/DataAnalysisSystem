
--רҵ�γ��ſ������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_32_A02_ZYKCPKJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ExamID]--����ID
      ,a.[EXAMROOMID]--����ID
      ,a.[CCID]--����ID
      ,a.[KCQDID]--���Կ�ĿID
      ,a.[ZYXXID]--רҵID
      ,a.[NJID]--�꼶ID
      ,c.SCHOOLID as c_EXAM_SCHOOLID--���Ա� ѧУ
      ,c.Name as c_EXAM_Name--���Ա� ��������
      ,c.CJKSKMLM as c_EXAM_CJKSKMLM--���Ա� �μӿ��Կ�Ŀ�б�
      ,c.StartDate as c_EXAM_StartDate--���Ա� ��ʼ����
      ,c.EndDate as c_EXAM_EndDate--���Ա� ��ֹ����
      ,c.XqID as c_EXAM_XqID--���Ա� ѧ��ID
      ,c.DffsID as c_EXAM_DffsID--���Ա� �Ƿַ�ʽ
      ,d.SCHOOLID as d_EXAMROOM_SCHOOLID--������ ѧУ
      ,d.Name as d_EXAMROOM_Name--������ ��������
      ,d.RoomID as d_EXAMROOM_RoomID--������ ����ID
      ,d.ExamID as d_EXAMROOM_ExamID--������ ����ID
      ,d.StuCount as d_EXAMROOM_StuCount--������ ������������
      ,e.SCHOOLID as e_KSCC_SCHOOLID--���Գ��α� ѧУ
      ,e.ExamID as e_KSCC_ExamID--���Գ��α� ����ID
      ,e.Name as e_KSCC_Name--���Գ��α� ��������
      ,e.TypeID as e_KSCC_TypeID--���Գ��α� ����ʱ������
      ,e.ExamDate as e_KSCC_ExamDate--���Գ��α� ��������
      ,f.SCHOOLID as f_JXJHKCQD_SCHOOLID--��ѧ�ƻ��γ��嵥��������� ѧУID
      ,f.JXJHID as f_JXJHKCQD_JXJHID--��ѧ�ƻ��γ��嵥��������� ��ѧ�ƻ�ID
      ,f.KCH as f_JXJHKCQD_KCH--��ѧ�ƻ��γ��嵥��������� �γ̺�
      ,f.JHBH as f_JXJHKCQD_JHBH--��ѧ�ƻ��γ��嵥��������� �ƻ����
      ,f.XQID as f_JXJHKCQD_XQID--��ѧ�ƻ��γ��嵥��������� ѧ��ID
      ,f.KCMC as f_JXJHKCQD_KCMC--��ѧ�ƻ��γ��嵥��������� �γ�����
      ,f.YXKC as f_JXJHKCQD_YXKC--��ѧ�ƻ��γ��嵥��������� Ԥ�޿γ�
      ,f.SFHXKC as f_JXJHKCQD_SFHXKC--��ѧ�ƻ��γ��嵥��������� �Ƿ���ģ��Ǹɣ�
      ,fb.MC as f_JXJHKCQD_SFHXKC_MC--�ڿη�ʽ����� ����
      ,f.KCFLM as f_JXJHKCQD_KCFLM--��ѧ�ƻ��γ��嵥��������� �γ̷�����
      ,fc.MC as f_JXJHKCQD_KCFLM_MC--�γ̷������ ����
      ,f.KCSXM as f_JXJHKCQD_KCSXM--��ѧ�ƻ��γ��嵥��������� �γ�������
      ,fd.MC as f_JXJHKCQD_KCSXM_MC--�γ����Դ���� ����
      ,fd.SM as f_JXJHKCQD_KCSXM_SM--�γ����Դ���� ˵��
      ,f.ZXXQ as f_JXJHKCQD_ZXXQ--��ѧ�ƻ��γ��嵥��������� ִ��ѧ��
      ,f.ZKS as f_JXJHKCQD_ZKS--��ѧ�ƻ��γ��嵥��������� �ܿ�ʱ
      ,f.LLKS as f_JXJHKCQD_LLKS--��ѧ�ƻ��γ��嵥��������� ���ۿ�ʱ
      ,f.SJKS as f_JXJHKCQD_SJKS--��ѧ�ƻ��γ��嵥��������� ʵ����ʱ
      ,f.XF as f_JXJHKCQD_XF--��ѧ�ƻ��γ��嵥��������� ѧ��
      ,g.SCHOOLID as g_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,g.ZYDM as g_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,gb.ZYMLLB as g_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,gb.MC as g_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,g.ZYMC as g_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,g.ZYYWMC as g_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,g.XZ as g_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,g.ZYFXMC as g_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,g.ZYJC as g_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,g.JLNY as g_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,g.ZYJSS as g_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,g.KSJGH as g_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,g.ZXF as g_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,g.SSZYML as g_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,gc.MC as g_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,g.ZYLB as g_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,h.SCHOOLID as h_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,h.NJMC as h_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,h.SSNF as h_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,h.NJZT as h_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,hb.MC as h_ZZNJ_NJZT_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZJX_32_A02_ZYKCPKJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A01_EXAM AS c ON a.ExamID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A02_EXAMROOM AS d ON a.EXAMROOMID = d.ID /*����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_31_A02_KSCC AS e ON a.CCID = e.ID /*����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS f ON a.KCQDID = f.ID /*���Կ�ĿID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS g ON a.ZYXXID = g.ZYBH /*רҵID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS h ON a.NJID = h.NJDM /*�꼶ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS fb ON f.SFHXKC = fb.DM /*�Ƿ���ģ��Ǹɣ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS fc ON f.KCFLM = fc.DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS fd ON f.KCSXM = fd.DM /*�γ�������*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS gb ON g.ZYDM = gb.DM /*רҵ����*/ AND g.SSZYML = gb.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS gc ON g.SSZYML = gc.DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS hb ON h.NJZT = hb.DM /*�꼶״̬*/
GO