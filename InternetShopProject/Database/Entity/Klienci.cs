using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Klienci
    {
        public Klienci()
        {
            Zamowienia = new HashSet<Zamowienia>();
        }

        public int IdKlienta { get; set; }
        public int IdDanych { get; set; }
        public string NumerTelefonu { get; set; }
        public string Nip { get; set; }
        public int IdAdresu { get; set; }

        public virtual Adresy IdAdresuNavigation { get; set; }
        public virtual Danepersonalne IdDanychNavigation { get; set; }
        public virtual ICollection<Zamowienia> Zamowienia { get; set; }
    }
}
