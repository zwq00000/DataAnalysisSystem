
--������������
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_21_A01_BMXSL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[BMBH]--���ű��
      ,a.[SJ]--ʱ��
      ,a.[ZYGZ]--��Ҫ����
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_JG_SCHOOLID--����������� ѧУ��
      ,c.LSJGH as c_JG_LSJGH--����������� ����������
      ,c.JGMC as c_JG_JGMC--����������� ��������
      ,c.JGJC as c_JG_JGJC--����������� �������
      ,c.FZRGH as c_JG_FZRGH--����������� �����˹���

FROM dbo.EDU_ZXJZ_21_A01_BMXSL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS c ON a.BMBH = c.JGH /*���ű��*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO