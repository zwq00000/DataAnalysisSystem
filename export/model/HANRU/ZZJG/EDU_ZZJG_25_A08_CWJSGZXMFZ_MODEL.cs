namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A08_CWJSGZXMFZ_metadata))]
    public partial class EDU_ZZJG_25_A08_CWJSGZXMFZ
    {
        public EDU_ZZJG_25_A08_CWJSGZXMFZ()
        {
            FZMC = "";
            ZY = "";
            XMIDLB = "";
            XMMCLB = "";
        }
        public class EDU_ZZJG_25_A08_CWJSGZXMFZ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "分组名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FZMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "摘要")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "项目ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "项目名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMCLB { get; set; }


        }
    }
}
