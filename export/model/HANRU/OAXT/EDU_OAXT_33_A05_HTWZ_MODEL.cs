namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_33_A05_HTWZ_metadata))]
    public partial class EDU_OAXT_33_A05_HTWZ
    {
        public EDU_OAXT_33_A05_HTWZ()
        {
            HTWZ = "";
        }
        public class EDU_OAXT_33_A05_HTWZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "红头文字")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HTWZ { get; set; }


        }
    }
}
