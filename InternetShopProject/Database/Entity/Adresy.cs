using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Adresy
    {
        public Adresy()
        {
            Klienci = new HashSet<Klienci>();
        }

        public int IdAdresu { get; set; }
        public string Ulica { get; set; }
        public string NumerBudynku { get; set; }
        public string NumerMieszkania { get; set; }
        public string KodPocztowy { get; set; }
        public string Miejscowosc { get; set; }

        public virtual ICollection<Klienci> Klienci { get; set; }
    }
}
