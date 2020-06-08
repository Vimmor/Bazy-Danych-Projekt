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

        public static int getProductIdByTypeName(string name)
        {
            int idDanych = context.Daneproduktu.Where(x => x.Nazwa == name).First().IdDanychProduktu;
            return context.Produkty.Where(x => x.IdDanychProduktu == idDanych).First().IdProduktu;
        }
    }
}
