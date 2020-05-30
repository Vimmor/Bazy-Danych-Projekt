using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Kategoria
    {
        public Kategoria()
        {
            Daneproduktu = new HashSet<Daneproduktu>();
        }

        public int IdKategorii { get; set; }
        public string Kategoria1 { get; set; }

        public virtual ICollection<Daneproduktu> Daneproduktu { get; set; }
    }
}
