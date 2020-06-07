using System;
using System.Collections.Generic;
using System.Linq;

namespace InternetShopProject.Database.Logic
{
    class Login
    {
        private static shop_databaseContext context = new Database.shop_databaseContext();
        public int UserExists(string login, string password)
        {
            var exist = context.Danepersonalne.Any(x => x.Login == login && x.Haslo == password);

            if (exist) return context.Danepersonalne.Where(x => x.Login == login && x.Haslo == password).First().IdDanych;
            else return 0;
        }

        public (char, int) UserType(int id)
        {
            var exist = context.Pracownicy.Any(x => x.IdDanych == id);
            if (exist)
            {
                var worker = context.Pracownicy.Where(x => x.IdDanych == id).First();
                if (worker.Stanowisko == "administrator") return ('a', worker.IdPracownika);
                else return ('w', worker.IdPracownika);
            }
            else
            {
                var client = context.Klienci.Where(x => x.IdDanych == id).First();
                return ('c', client.IdKlienta);
            }
        }
    }
}