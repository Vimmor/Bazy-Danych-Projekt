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
    /// Interaction logic for LogInBar.xaml
    /// </summary>
    public partial class LogInBar : Page
    {
        public LogInBar()
        {
            InitializeComponent();
        }

        private void Wyloguj_Click(object sender, RoutedEventArgs e)
        {
            var m = (MainWindow)Application.Current.MainWindow;
            m.logIn = false;
            m.Page.Content = new MainPage();
            m.Menu.Content = null;
            m.Bar.Content = new LogOutBar();
        }
    }
}
