using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace InternetShopProject.Database.Logic
{
    public class Invoice
    {
        private static shop_databaseContext context = new shop_databaseContext();

        public static List<Faktury> getAllInvoices() {
            return context.Faktury.ToList();
        }

        public static List<Fakturydlapracownika> getInvoicesForEmployer() {
            return context.Fakturydlapracownika.ToList();
        }
    }
}
