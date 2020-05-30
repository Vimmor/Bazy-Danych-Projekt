using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace InternetShopProject.Database.Logic
{
    public class ClientsFromDB
    {
        private static shop_databaseContext context = new Database.shop_databaseContext();
        public static List<Klienci> getAllClients() {
            return context.Klienci.ToList();
        }

        public static List<Zamowieniadlaklienta> getAllClientOrders() {
            return context.Zamowieniadlaklienta.ToList();
        }
    }
}
