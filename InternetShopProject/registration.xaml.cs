using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace InternetShopProject
{
    using Database;
    using Database.Logic;
    /// <summary>
    /// Logika interakcji dla klasy registration.xaml
    /// </summary>
    public partial class registration : Page
    {
        public registration()
        {
            InitializeComponent();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void TextBox_TextChanged_1(object sender, TextChangedEventArgs e)
        {

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            if( name.Text!=null &&
                surname.Text != null &&
                login.Text != null &&
                password.Text != null &&
                password2.Text != null &&
                mail.Text != null &&
                buildingNumber.Text != null &&
                city.Text != null &&
                postCode.Text != null &&
                password.Text == password2.Text)
            {
                Danepersonalne dane = new Danepersonalne();
                Adresy adres = new Adresy();
                Klienci klient = new Klienci();

                dane.Imie = name.Text;
                dane.Nazwisko = surname.Text;
                dane.Login = login.Text;
                dane.Haslo = password.Text;
                dane.Email = mail.Text;

                int idDanych = Registration.addNewPersonalData(dane);

                adres.NumerBudynku = buildingNumber.Text;
                adres.Miejscowosc = city.Text;
                adres.KodPocztowy = postCode.Text;
                if (street.Text != null) adres.Ulica = street.Text;
                if (flatNumber.Text != null) adres.NumerMieszkania = flatNumber.Text;

                int idAdresu = Registration.addNewAdress(adres);

                klient.IdAdresu = idAdresu;
                klient.IdDanych = idDanych;
                if (phone.Text != null) klient.NumerTelefonu = phone.Text;
                if (nip.Text != null) klient.Nip = nip.Text;

                Registration.addNewClientAccount(klient);

                MainWindow m = (MainWindow)Application.Current.MainWindow;
                m.Page.Content = new LogInPage();
            }
            else
            {
                MessageBox.Show("Some mandatory fields are empty");
            }
        }
    }
}
