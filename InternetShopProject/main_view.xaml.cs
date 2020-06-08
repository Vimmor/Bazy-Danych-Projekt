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
    /// Logika interakcji dla klasy main_view.xaml
    /// </summary>
    public partial class main_view : Page
    {
        public main_view()
        {
            InitializeComponent();
            ProductsTypeViever.ItemsSource = Products.getAllProducts();
            CatChanger.ItemsSource = Products.getAllCategoryNames();
        }

        public void AddToBasket_Click(object sender, RoutedEventArgs e)
        {
            var m = (MainWindow)Application.Current.MainWindow;
            Produktydlaklienta product = ProductsTypeViever.SelectedItem as Produktydlaklienta;
            int idProduktu = Products.getProductIdByTypeName(product.Nazwa);
            m.ProductsInBasket.Add(idProduktu);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ProductsTypeViever.ItemsSource = Products.getAllProductsByCategory(CatChanger.SelectedItem.ToString());
        }
    }
}
