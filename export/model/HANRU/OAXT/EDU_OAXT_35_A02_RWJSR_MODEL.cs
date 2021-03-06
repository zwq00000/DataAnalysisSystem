namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_35_A02_RWJSR_metadata))]
    public partial class EDU_OAXT_35_A02_RWJSR
    {
        public EDU_OAXT_35_A02_RWJSR()
        {
            JSRID = "";
            FJ = "";
            BZ = "";
        }
        public class EDU_OAXT_35_A02_RWJSR_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "任务")]
            public Int32 RWID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "接收人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "阅读状态")]
            public Int32 YDZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "完成状态")]
            public Int32 WCZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "删除状态")]
            public Int32 SCZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "提交状态")]
            public Int32 TJZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "附件")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
