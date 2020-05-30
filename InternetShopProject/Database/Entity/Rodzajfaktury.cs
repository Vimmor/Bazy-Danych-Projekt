using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Rodzajfaktury
    {
        public Rodzajfaktury()
        {
            Faktury = new HashSet<Faktury>();
        }

        public int IdRodzajFaktury { get; set; }
        public string Rodzaj { get; set; }

        public virtual ICollection<Faktury> Faktury { get; set; }
    }
}
