namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_55_A02_CZDAGNQX_metadata))]
    public partial class EDU_ZXXS_55_A02_CZDAGNQX
    {
        public EDU_ZXXS_55_A02_CZDAGNQX()
        {
            QXMC = "";
        }
        public class EDU_ZXXS_55_A02_CZDAGNQX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "功能")]
            public Int32 GNID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "用户类型")]
            public Int32 YHLX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "权限名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QXMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


        }
    }
}
