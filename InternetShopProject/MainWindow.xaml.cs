using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public bool logIn = false;
        public char user; // 'w' - worker, 'c' - client, 'a' - admin
        public int userId;
        public List<int> ProductsInBasket = new List<int>();

        public MainWindow()
        {
            InitializeComponent();

            Page.Content = new main_view();
        }

        private void homeButton_Click(object sender, RoutedEventArgs e)
        {
            //Page.Content = new MainPage();
            Page.Content = new main_view();
        }
    }
}
