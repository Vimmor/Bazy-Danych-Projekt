using System;
using System.Collections.Generic;

namespace InternetShopProject.Database
{
    public partial class Typumowy
    {
        public Typumowy()
        {
            Umowy = new HashSet<Umowy>();
        }

        public int IdTypu { get; set; }
        public string Typ { get; set; }

        public virtual ICollection<Umowy> Umowy { get; set; }
    }
}
