using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace InternetShopProject.Database.Logic
{
    public class AdminFromDB
    {
        private static shop_databaseContext context = new Database.shop_databaseContext();

        public static List<Pracownicydlaadministratora> getAllWorkers()
        {
            return context.Pracownicydlaadministratora.ToList();
        }

        public static List<Umowydlaadministratora> getAllAgreements()
        {
            return context.Umowydlaadministratora.ToList();
        }
    }
}
