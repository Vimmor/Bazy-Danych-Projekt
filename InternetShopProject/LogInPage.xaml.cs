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
    /// Interaction logic for LogInPage.xaml
    /// </summary>
    public partial class LogInPage : Page
    {
        public LogInPage()
        {
            InitializeComponent();
        }

        private void LogIn_Click(object sender, RoutedEventArgs e)
        {
            Login l = new Login();

            int id = l.UserExists(loginBox.Text,passwordBox.Password);
            
            if(id==0)
            {
                MessageBox.Show("Złe dane logowania");
                passwordBox.Clear();
                loginBox.Clear();
            }
            else
            {
                MainWindow m = (MainWindow)Application.Current.MainWindow;
                m.user = l.UserType(id);
                m.logIn = true;
                m.Bar.Content = new LogInBar();
                if (m.user == 'a') m.Menu.Content = new AdminMenu();
                else if (m.user == 'w') m.Menu.Content = new WorkerMenu();
                else m.Menu.Content = new ClientMenu();
                m.Page.Content = new MainPage();
            }
        }
    }
}
