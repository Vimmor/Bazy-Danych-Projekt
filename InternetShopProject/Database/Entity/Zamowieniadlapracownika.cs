using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Zamowieniadlapracownika
    {
        public int IdZamowienia { get; set; }
        public string Status { get; set; }
        public DateTime DataTransakcji { get; set; }
        public string Imie { get; set; }
        public string Nazwisko { get; set; }
    }
}
