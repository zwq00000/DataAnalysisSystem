namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_14_A01_BKLX_metadata))]
    public partial class EDU_ZZJG_14_A01_BKLX
    {
        public EDU_ZZJG_14_A01_BKLX()
        {
            BKLXMC = "";
        }
        public class EDU_ZZJG_14_A01_BKLX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "类型名称")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKLXMC { get; set; }


        }
    }
}
