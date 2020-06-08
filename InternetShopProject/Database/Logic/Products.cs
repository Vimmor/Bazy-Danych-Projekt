using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
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

        public static List<Produktydlapracownika> getAllProductsForEmployee()
        {
            return context.Produktydlapracownika.ToList();
        }

        public static List<Produktydlaklienta> getAllProductsByCategory(string name)
        {
            return context.Produktydlaklienta.Where(x => x.Kategoria == name).ToList();
        }

        public static int getProductIdByTypeName(string name)
        {
            int idDanych = context.Daneproduktu.Where(x => x.Nazwa == name).First().IdDanychProduktu;
            return context.Produkty.Where(x => x.IdDanychProduktu == idDanych).First().IdProduktu;
        }

        public static List<string> getAllCategoryNames()
        {
            List<Kategoria> categories = context.Kategoria.ToList();
            List<string> names = new List<string>();

            foreach(Kategoria cat in categories)
            {
                names.Add(cat.Kategoria1);
            }
            return names;
        }

        public static Produkty getProductById(int id)
        {
            return context.Produkty.Where(x => x.IdProduktu == id).First();
        }
    }
}
