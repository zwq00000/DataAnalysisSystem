namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_XYDT_01_A12_YQLJ_metadata))]
    public partial class EDU_XYDT_01_A12_YQLJ
    {
        public EDU_XYDT_01_A12_YQLJ()
        {
            TITLE = "";
            URL = "";
        }
        public class EDU_XYDT_01_A12_YQLJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������������")]
            public Int32 YQLJLXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TITLE { get; set; }


            [Display(Name = "ͼƬ")]
            [StringLength(500)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String IMAGEURL { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String URL { get; set; }


        }
    }
}