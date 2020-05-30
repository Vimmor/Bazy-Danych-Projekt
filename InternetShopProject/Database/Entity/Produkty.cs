using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Produkty
    {
        public int IdProduktu { get; set; }
        public int IdDanychProduktu { get; set; }
        public decimal Cena { get; set; }
        public string NumerSeryjny { get; set; }
        public int? IdZamowienia { get; set; }

        public virtual Daneproduktu IdDanychProduktuNavigation { get; set; }
        public virtual Zamowienia IdZamowieniaNavigation { get; set; }
    }
}
