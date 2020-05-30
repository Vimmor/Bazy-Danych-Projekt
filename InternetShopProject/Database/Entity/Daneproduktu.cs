using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Daneproduktu
    {
        public Daneproduktu()
        {
            Produkty = new HashSet<Produkty>();
        }

        public int IdDanychProduktu { get; set; }
        public string Nazwa { get; set; }
        public int IdKategorii { get; set; }
        public decimal CenaKatalogowa { get; set; }
        public string Material { get; set; }

        public virtual Kategoria IdKategoriiNavigation { get; set; }
        public virtual ICollection<Produkty> Produkty { get; set; }
    }
}
