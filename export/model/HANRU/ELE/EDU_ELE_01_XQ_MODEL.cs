namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_XQ_metadata))]
    public partial class EDU_ELE_01_XQ
    {
        public EDU_ELE_01_XQ()
        {
            XQM = "";
            XQMC = "";
        }
        public class EDU_ELE_01_XQ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学期码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学期名称")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQMC { get; set; }


            [Display(Name = "学期开始日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQKSRQ { get; set; }


            [Display(Name = "学期结束日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQJSRQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "表BaseProjectInfo外键")]
            public Int32 BaseProjectInfoID { get; set; }


        }
    }
}
