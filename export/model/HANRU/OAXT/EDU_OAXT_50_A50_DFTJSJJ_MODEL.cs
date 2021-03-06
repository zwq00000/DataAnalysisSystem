namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A50_DFTJSJJ_metadata))]
    public partial class EDU_OAXT_50_A50_DFTJSJJ
    {
        public EDU_OAXT_50_A50_DFTJSJJ()
        {
            SJJMC = "";
            DFDXZMC = "";
            TJDXJDBMJH = "";
            TJDXJDMCLB = "";
            QSSJ = DateTime.Now;
            JSSJ = DateTime.Now;
            SJJCJMC = "";
            SJJPCMC = "";
        }
        public class EDU_OAXT_50_A50_DFTJSJJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "项目")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "数据集名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJJMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分对象组")]
            public Int32 DFDXZID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "打分对象组名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFDXZMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "统计对象节点编码集合")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TJDXJDBMJH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "统计对象节点名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TJDXJDMCLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "起始时间")]
            public DateTime QSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "结束时间")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数据集层级")]
            public Int32 SJJCJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数据集频次")]
            public Int32 SJJPC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "数据集层级名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJJCJMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "数据集频次名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJJPCMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "数据生成状态")]
            public Int32 SJSCZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前批次编号")]
            public Int32 DQPCBH { get; set; }


        }
    }
}
