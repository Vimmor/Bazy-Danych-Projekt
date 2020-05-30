using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Danepersonalne
    {
        public int IdDanych { get; set; }
        public string Imie { get; set; }
        public string Nazwisko { get; set; }
        public string Login { get; set; }
        public string Haslo { get; set; }
        public string Email { get; set; }

        public virtual Klienci Klienci { get; set; }
        public virtual Pracownicy Pracownicy { get; set; }
    }
}
