namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A01_XXKCLB_metadata))]
    public partial class EDU_ZZJX_50_A01_XXKCLB
    {
        public EDU_ZZJX_50_A01_XXKCLB()
        {
            LBMC = "";
            JJ = "";
        }
        public class EDU_ZZJX_50_A01_XXKCLB_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "类别名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LBMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "简介")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最高同时选课数量")]
            public Int32 ZGTSXKSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否允许同名课程多选")]
            public Int32 SFYXTMKCDX { get; set; }


        }
    }
}
