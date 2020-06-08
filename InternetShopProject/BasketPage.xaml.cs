using InternetShopProject.Database;
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
    /// Interaction logic for BasketPage.xaml
    /// </summary>
    public partial class BasketPage : Page
    {
        public BasketPage()
        {
            InitializeComponent();
            var m = (MainWindow)Application.Current.MainWindow;
            List<Produkty> products = new List<Produkty>();
            decimal suma=0;
            foreach(int i in m.ProductsInBasket)
            {
                products.Add(Products.getProductById(i));
            }
            BasketViewer.ItemsSource = products;
            foreach(Produkty p in products)
            {
                suma += p.Cena;
            }
            sum.Content = suma.ToString();
        }

        public void DeleteFromBasket_Click(object sender, RoutedEventArgs e)
        {
            var m = (MainWindow)Application.Current.MainWindow;
            Produkty product = BasketViewer.SelectedItem as Produkty;
            m.ProductsInBasket.Remove(product.IdProduktu);

            m.Page.Content = new BasketPage();
        }
    }
}
