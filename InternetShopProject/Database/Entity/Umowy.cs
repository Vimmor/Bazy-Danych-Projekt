using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Umowy
    {
        public int IdUmowy { get; set; }
        public int IdPracownika { get; set; }
        public int IdTypu { get; set; }
        public int PodstawaWynagrodzenia { get; set; }
        public DateTime DataRozpoczecia { get; set; }
        public DateTime? DataZakonczenia { get; set; }

        public virtual Pracownicy IdPracownikaNavigation { get; set; }
        public virtual Typumowy IdTypuNavigation { get; set; }
    }
}
