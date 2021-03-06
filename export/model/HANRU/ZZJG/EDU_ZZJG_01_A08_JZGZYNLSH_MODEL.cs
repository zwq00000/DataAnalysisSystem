namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_01_A08_JZGZYNLSH_metadata))]
    public partial class EDU_ZZJG_01_A08_JZGZYNLSH
    {
        public EDU_ZZJG_01_A08_JZGZYNLSH()
        {
            ZSMC = "";
            ZSBFRQ = "";
            SFSZYZGZS = "";
        }
        public class EDU_ZZJG_01_A08_JZGZYNLSH_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教职工")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "证书名称")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSMC { get; set; }


            [Display(Name = "证书编号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSBH { get; set; }


            [Display(Name = "证书颁发单位")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSBFDW { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "证书颁发日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSBFRQ { get; set; }


            [Display(Name = "证书备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSBZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "是否是职业资格证书")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFSZYZGZS { get; set; }


            [Display(Name = "简介")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "证书等级")]
            public Int32 ZSDJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 ZT { get; set; }


        }
    }
}
