namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_23_A07_PHZYDCTJJL_metadata))]
    public partial class EDU_ZZJG_23_A07_PHZYDCTJJL
    {
        public EDU_ZZJG_23_A07_PHZYDCTJJL()
        {
            TJSJ = DateTime.Now;
        }
        public class EDU_ZZJG_23_A07_PHZYDCTJJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "调查名称")]
            public Int32 DCMCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评价教师")]
            public Int32 PJJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "提交时间")]
            public DateTime TJSJ { get; set; }


        }
    }
}
