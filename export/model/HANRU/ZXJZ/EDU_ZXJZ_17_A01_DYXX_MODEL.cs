namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_17_A01_DYXX_metadata))]
    public partial class EDU_ZXJZ_17_A01_DYXX
    {
        public EDU_ZXJZ_17_A01_DYXX()
        {
            RDSJ = DateTime.Now;
            RDDD = "";
            RDJSR = "";
            TJSJ = DateTime.Now;
            BZ = "";
        }
        public class EDU_ZXJZ_17_A01_DYXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�̹�������Ϣ")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�뵳ʱ��")]
            public DateTime RDSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�뵳�ص�")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RDDD { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�뵳������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RDJSR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǰ״̬")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ӽ�ʦ")]
            public Int32 TJJSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ע")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}