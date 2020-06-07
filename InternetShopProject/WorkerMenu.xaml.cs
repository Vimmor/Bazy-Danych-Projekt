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
    /// Interaction logic for WorkerMenu.xaml
    /// </summary>
    public partial class WorkerMenu : Page
    {
        public WorkerMenu()
        {
            InitializeComponent();
        }

        private void Ordres_Click(object sender, RoutedEventArgs e)
        {
            var m = (MainWindow)Application.Current.MainWindow;
            m.Page.Content = new WorkerOrders();
        }
    }
}