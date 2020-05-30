using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Statuszamowienia
    {
        public Statuszamowienia()
        {
            Zamowienia = new HashSet<Zamowienia>();
        }

        public int IdStatusZamowienia { get; set; }
        public string Status { get; set; }

        public virtual ICollection<Zamowienia> Zamowienia { get; set; }
    }
}
