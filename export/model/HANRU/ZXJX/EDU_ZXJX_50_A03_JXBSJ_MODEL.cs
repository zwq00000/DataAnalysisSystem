namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_50_A03_JXBSJ_metadata))]
    public partial class EDU_ZXJX_50_A03_JXBSJ
    {
        public EDU_ZXJX_50_A03_JXBSJ()
        {
            KCMC = "";
            KCJS = "";
            JXJH = "";
            NJID = "";
            SKDD = "";
        }
        public class EDU_ZXJX_50_A03_JXBSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "选修课程类别")]
            public Int32 XXKCLBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程介绍")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCJS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教学计划")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXJH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "总课时")]
            public Int32 ZKS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学分")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal XF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前状态")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开课教师")]
            public Int32 KKJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上课时间")]
            public Int32 SKSJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "上课地点")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SKDD { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "班级可容纳人数")]
            public Int32 BJKRNRS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最低开班人数")]
            public Int32 ZDKBRS { get; set; }


        }
    }
}
