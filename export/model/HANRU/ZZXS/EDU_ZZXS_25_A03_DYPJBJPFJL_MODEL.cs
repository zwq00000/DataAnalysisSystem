namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_25_A03_DYPJBJPFJL_metadata))]
    public partial class EDU_ZZXS_25_A03_DYPJBJPFJL
    {
        public EDU_ZZXS_25_A03_DYPJBJPFJL()
        {
            BJID = "";
            SJ = DateTime.Now;
            BZ = "";
            TJSJ = DateTime.Now;
            XFSQSJ = DateTime.Now;
            XFLY = "";
            XFCLSJ = DateTime.Now;
            CLYJ = "";
            SCSJ = DateTime.Now;
        }
        public class EDU_ZZXS_25_A03_DYPJBJPFJL_metadata
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
            [Display(Name = "周次")]
            public Int32 ZCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "大类")]
            public Int32 DLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "小类")]
            public Int32 XLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "时间")]
            public DateTime SJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "销分状态")]
            public Int32 XFZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "销分申请教师")]
            public Int32 XFSQJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "销分申请时间")]
            public DateTime XFSQSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "销分理由")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XFLY { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "销分处理结果")]
            public Int32 XFCLJG { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "销分处理教师")]
            public Int32 XFCLJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "销分处理时间")]
            public DateTime XFCLSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "处理意见")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLYJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "删除状态")]
            public Int32 SCZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "删除教师")]
            public Int32 SCJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "删除时间")]
            public DateTime SCSJ { get; set; }


        }
    }
}
