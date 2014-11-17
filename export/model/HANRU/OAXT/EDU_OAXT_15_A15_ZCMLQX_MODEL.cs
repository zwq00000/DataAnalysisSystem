namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A15_ZCMLQX_metadata))]
    public partial class EDU_OAXT_15_A15_ZCMLQX
    {
        public EDU_OAXT_15_A15_ZCMLQX()
        {
            YHID = "";
        }
        public class EDU_OAXT_15_A15_ZCMLQX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHID { get; set; }


            [Display(Name = "目录ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MLIDLB { get; set; }


            [Display(Name = "目录名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MLMCLB { get; set; }


        }
    }
}
