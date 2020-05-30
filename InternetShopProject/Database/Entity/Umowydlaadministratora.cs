using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Umowydlaadministratora
    {
        public int IdPracownika { get; set; }
        public string Typ { get; set; }
        public int PodstawaWynagrodzenia { get; set; }
        public DateTime DataRozpoczecia { get; set; }
        public DateTime? DataZakonczenia { get; set; }
    }
}
