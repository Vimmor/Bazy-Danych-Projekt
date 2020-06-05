using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace InternetShopProject.Database.Logic
{
    public class Products
    {
        private static shop_databaseContext context = new shop_databaseContext();

        public static List<Produktydlaklienta> getAllProducts()
        {
            return context.Produktydlaklienta.ToList();
        }
    }
}
