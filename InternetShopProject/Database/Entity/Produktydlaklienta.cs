using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Produktydlaklienta
    {
        public string Nazwa { get; set; }
        public string Kategoria { get; set; }
        public string Material { get; set; }
        public decimal CenaKatalogowa { get; set; }
    }
}
