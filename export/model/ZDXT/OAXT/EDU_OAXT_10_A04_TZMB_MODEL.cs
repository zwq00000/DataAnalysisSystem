namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_10_A04_TZMB_metadata))]
    public partial class EDU_OAXT_10_A04_TZMB
    {
        public EDU_OAXT_10_A04_TZMB()
        {
            MBMC = "";
            MBNR = "";
        }
        public class EDU_OAXT_10_A04_TZMB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ģ������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MBMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ģ������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MBNR { get; set; }


        }
    }
}