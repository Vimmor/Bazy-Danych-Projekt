using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Pracownicy
    {
        public Pracownicy()
        {
            Umowy = new HashSet<Umowy>();
            Zamowienia = new HashSet<Zamowienia>();
        }

        public int IdPracownika { get; set; }
        public int IdDanych { get; set; }
        public string Stanowisko { get; set; }

        public virtual Danepersonalne IdDanychNavigation { get; set; }
        public virtual ICollection<Umowy> Umowy { get; set; }
        public virtual ICollection<Zamowienia> Zamowienia { get; set; }
    }
}
