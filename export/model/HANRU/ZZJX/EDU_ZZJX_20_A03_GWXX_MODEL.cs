namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_20_A03_GWXX_metadata))]
    public partial class EDU_ZZJX_20_A03_GWXX
    {
        public EDU_ZZJX_20_A03_GWXX()
        {
            JobName = "";
            PubTime = new DateTime(1900, 1, 1);
            EndTime = new DateTime(1900, 1, 1);
            monthlypay = "";
            LanguageRequire = "";
            WorkPlace = "";
            Computer = "";
            education = "";
            Age = "";
            abstract = "";
            Major = "";
            Base = "";
            experience = "";
        }
        public class EDU_ZZJX_20_A03_GWXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "企业")]
            public Int32 ComID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "岗位名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JobName { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "招聘开始时间")]
            public DateTime PubTime { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "招聘结束时间")]
            public DateTime EndTime { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "工作形式")]
            public Int32 WorkType { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "性别要求")]
            public Int32 Sex { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "岗位薪酬")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String monthlypay { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "语言要求")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LanguageRequire { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "工作地点")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WorkPlace { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "计算机水平")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Computer { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "招聘人数")]
            public Int32 ZPRS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学历要求")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String education { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年龄要求")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Age { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "岗位简介")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String abstract { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "专业要求")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Major { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "基本情况")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Base { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "工作经验")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String experience { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "岗位审核状态")]
            public Int32 GWSHZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "岗位当前状态")]
            public Int32 Status { get; set; }


        }
    }
}
