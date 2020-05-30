using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Kliencidlaadministratora
    {
        public int IdKlienta { get; set; }
        public string Imie { get; set; }
        public string Nazwisko { get; set; }
        public string NumerTelefonu { get; set; }
        public string Nip { get; set; }
        public int IdAdresu { get; set; }
    }
}
