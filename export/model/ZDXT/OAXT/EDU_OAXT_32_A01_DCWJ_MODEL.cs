namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_32_A01_DCWJ_metadata))]
    public partial class EDU_OAXT_32_A01_DCWJ
    {
        public EDU_OAXT_32_A01_DCWJ()
        {
            Title = "";
            Users = "";
            StartTime = DateTime.Now;
            EndTime = DateTime.Now;
            JJ = "";
        }
        public class EDU_OAXT_32_A01_DCWJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ʾ�����")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Title { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѡ��Ա")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Users { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʼʱ��")]
            public DateTime StartTime { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime EndTime { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���")]
            public Int32 IsStart { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JJ { get; set; }


        }
    }
}