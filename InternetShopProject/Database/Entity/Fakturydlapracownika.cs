using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Fakturydlapracownika
    {
        public int IdFaktury { get; set; }
        public int IdZamowienia { get; set; }
        public string Rodzaj { get; set; }
        public DateTime DataWystawienia { get; set; }
        public DateTime TerminPlatnosci { get; set; }
        public byte CzyOplacona { get; set; }
    }
}
