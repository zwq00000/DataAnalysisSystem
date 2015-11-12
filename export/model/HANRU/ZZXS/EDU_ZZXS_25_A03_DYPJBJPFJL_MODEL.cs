namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_25_A03_DYPJBJPFJL_metadata))]
    public partial class EDU_ZZXS_25_A03_DYPJBJPFJL
    {
        public EDU_ZZXS_25_A03_DYPJBJPFJL()
        {
            BJID = "";
            SJ = DateTime.Now;
            BZ = "";
            TJSJ = DateTime.Now;
            XFSQSJ = DateTime.Now;
            XFLY = "";
            XFCLSJ = DateTime.Now;
            CLYJ = "";
            SCSJ = DateTime.Now;
        }
        public class EDU_ZZXS_25_A03_DYPJBJPFJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ܴ�")]
            public Int32 ZCID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 DLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "С��")]
            public Int32 XLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʱ��")]
            public DateTime SJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 XFZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���������ʦ")]
            public Int32 XFSQJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������ʱ��")]
            public DateTime XFSQSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XFLY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ִ������")]
            public Int32 XFCLJG { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ִ�����ʦ")]
            public Int32 XFCLJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ִ���ʱ��")]
            public DateTime XFCLSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLYJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ɾ��״̬")]
            public Int32 SCZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ɾ����ʦ")]
            public Int32 SCJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ɾ��ʱ��")]
            public DateTime SCSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ѧ�����ּ�¼")]
            public Int32 GLXSPFJLID { get; set; }


        }
    }
}