using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Zamowienia
    {
        public Zamowienia()
        {
            Faktury = new HashSet<Faktury>();
            Produkty = new HashSet<Produkty>();
        }

        public int IdZamowienia { get; set; }
        public int IdKlienta { get; set; }
        public int IdPracownika { get; set; }
        public int IdStatusZamowienia { get; set; }
        public DateTime DataTransakcji { get; set; }
        public int Licznik { get; set; }

        public virtual Klienci IdKlientaNavigation { get; set; }
        public virtual Pracownicy IdPracownikaNavigation { get; set; }
        public virtual Statuszamowienia IdStatusZamowieniaNavigation { get; set; }
        public virtual ICollection<Faktury> Faktury { get; set; }
        public virtual ICollection<Produkty> Produkty { get; set; }
    }
}
