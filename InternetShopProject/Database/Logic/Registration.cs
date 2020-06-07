using System;
using System.Collections.Generic;
using System.Text;

namespace InternetShopProject.Database.Logic
{
    public class Registration {
        public static shop_databaseContext context = new shop_databaseContext();


        public static int addNewPersonalData(Danepersonalne dane)
        {
            context.Database.EnsureCreated();
            context.Danepersonalne.Add(dane);
            context.SaveChanges();

            return dane.IdDanych;
        }

        public static int addNewAdress(Adresy adres)
        {
            context.Database.EnsureCreated();
            context.Adresy.Add(adres);
            context.SaveChanges();

            return adres.IdAdresu;
        }

        public static void addNewClientAccount(Klienci client) {
            context.Database.EnsureCreated();
            context.Klienci.Add(client);
            context.SaveChanges();
        }

        public static void addNewEmployer(Pracownicy employer) {
            context.Database.EnsureCreated();
            context.Pracownicy.Add(employer);
            context.SaveChanges();
        }
    }
}
