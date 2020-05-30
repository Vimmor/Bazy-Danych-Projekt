using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Zamowieniadlaklienta
    {
        public int IdZamowienia { get; set; }
        public string Status { get; set; }
        public DateTime DataTransakcji { get; set; }
    }
}
