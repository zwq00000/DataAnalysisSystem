namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_02_A02_SJZSD_metadata))]
    public partial class EDU_ZYZX_02_A02_SJZSD
    {
        public EDU_ZYZX_02_A02_SJZSD()
        {
            ZSDMC = "";
        }
        public class EDU_ZYZX_02_A02_SJZSD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�γ̿�")]
            public Int32 KCKID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "֪ʶ������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZSDMC { get; set; }


        }
    }
}