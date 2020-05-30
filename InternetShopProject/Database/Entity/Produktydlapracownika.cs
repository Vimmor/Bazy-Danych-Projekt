using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Produktydlapracownika
    {
        public string Nazwa { get; set; }
        public string Kategoria { get; set; }
        public string Material { get; set; }
        public decimal CenaKatalogowa { get; set; }
        public decimal Cena { get; set; }
        public string NumerSeryjny { get; set; }
        public int? IdZamowienia { get; set; }
    }
}
