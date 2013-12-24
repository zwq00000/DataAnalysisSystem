namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_17_A02_DFSJJL_metadata))]
    public partial class EDU_ZZJG_17_A02_DFSJJL
    {
        public EDU_ZZJG_17_A02_DFSJJL()
        {
            TJSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZJG_17_A02_DFSJJL_metadata
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
            [Display(Name = "��Ա��Ϣ")]
            public Int32 DYXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�̹�������Ϣ")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�սɽ��")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal SJJE { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ӽ�ʦ")]
            public Int32 TJJSID { get; set; }


            [Display(Name = "����ʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}