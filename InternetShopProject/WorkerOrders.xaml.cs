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
    /// <summary>
    /// Logika interakcji dla klasy WorkerOrders.xaml
    /// </summary>
    public partial class WorkerOrders : Page
    {
        public WorkerOrders()
        {
            InitializeComponent();
            ordersForWorkers.ItemsSource = Database.Logic.OrdersForEmployer.getOrdersByEmployerId(10);
        }
    }
}
