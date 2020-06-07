using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace InternetShopProject.Database.Logic
{
    public class OrdersForClient
    {
        private static shop_databaseContext context = new shop_databaseContext();

        public static List<Zamowieniadlaklienta> getOrdersForClientById(int id) {
            var ordersList = context.Zamowienia.Where(o => o.IdKlienta == id).ToList();
            var ordersForClient = new List<Zamowieniadlaklienta>();
            foreach (var order in ordersList) {
                ordersForClient.Add(new Zamowieniadlaklienta()
                {
                    IdZamowienia = order.IdZamowienia,
                    DataTransakcji = order.DataTransakcji,
                    Status = OrdersForEmployer.getOrderStatusById(order.IdStatusZamowienia)
                });
            }
            return ordersForClient;
        }
    }
}
