using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace InternetShopProject.Database.Logic
{
    public class OrdersForEmployer
    {
        private static shop_databaseContext context = new Database.shop_databaseContext();
        public static List<Zamowieniadlapracownika> getOrdersByEmployerId(int id)
        {
            var employerOrdersList = new List<Zamowieniadlapracownika>();
            var allOrderList = context.Zamowienia.ToList();
            foreach (var order in allOrderList) {
                if (order.IdPracownika == id) {
                    employerOrdersList.Add(new Zamowieniadlapracownika()
                    {
                        IdZamowienia = order.IdZamowienia,
                        Imie = getClientPersonalData(order.IdKlienta)[0],
                        Nazwisko = getClientPersonalData(order.IdKlienta)[1],
                        DataTransakcji = order.DataTransakcji,
                        Status = getOrderStatusById(order.IdStatusZamowienia)
                    });
                }
            }
            return employerOrdersList;
        }

        public static List<String> getClientPersonalData(int id) {
            var client = context.Klienci.Where(k => k.IdKlienta == id).ToList()[0];
            var personalData = context.Danepersonalne.Where(d => d.IdDanych == client.IdDanych).ToList()[0];
            return new List<String>() { personalData.Imie, personalData.Nazwisko };
        }

        public static String getOrderStatusById(int id) {
                var status = context.Statuszamowienia.Where(s => s.IdStatusZamowienia == id).ToList()[0];
                return status.Status;
        }
    }
}
