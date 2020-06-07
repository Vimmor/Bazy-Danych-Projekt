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
    using Database.Logic;
    /// <summary>
    /// Interaction logic for OrdersPage.xaml
    /// </summary>
    public partial class OrdersPage : Page
    {
        public OrdersPage()
        {
            InitializeComponent();
            var m = (MainWindow)Application.Current.MainWindow;
            if(m.user=='c')
            {
                OrdersViever.ItemsSource = OrdersForClient.getOrdersForClientById(m.userId);
            }
        }
    }
}
