using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Faktury
    {
        public int IdFaktury { get; set; }
        public int IdZamowienia { get; set; }
        public int IdRodzajFaktury { get; set; }
        public DateTime DataWystawienia { get; set; }
        public DateTime TerminPlatnosci { get; set; }
        public byte CzyOplacona { get; set; }

        public virtual Rodzajfaktury IdRodzajFakturyNavigation { get; set; }
        public virtual Zamowienia IdZamowieniaNavigation { get; set; }
    }
}
