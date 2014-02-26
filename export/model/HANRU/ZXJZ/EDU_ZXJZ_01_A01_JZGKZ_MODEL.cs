namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJZ_01_A01_JZGKZ_metadata))]
    public partial class EDU_ZXJZ_01_A01_JZGKZ
    {
        public EDU_ZXJZ_01_A01_JZGKZ()
        {
            SSDZB = "";
            BYYX = "";
            XXJL = "";
            GZJL = "";
            HJQK = "";
        }
        public class EDU_ZXJZ_01_A01_JZGKZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "�̹�������Ϣ")]
            public Int32 JZGID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 GL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 JL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�߼���ְ����")]
            public Int32 GJRZNX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�м���ְ����")]
            public Int32 ZJRZNX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ְ����")]
            public Int32 CJRZNX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ְ����")]
            public Int32 RZNX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������֧��")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SSDZB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ҵԺУ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYYX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧϰ����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXJL { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZJL { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HJQK { get; set; }


        }
    }
}