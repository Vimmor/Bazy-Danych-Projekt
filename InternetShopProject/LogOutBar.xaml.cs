﻿using System;
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
    /// Interaction logic for LogOutBar.xaml
    /// </summary>
    public partial class LogOutBar : Page
    {
        public LogOutBar()
        {
            InitializeComponent();
        }

        private void Wyloguj_Click(object sender, RoutedEventArgs e)
        {
            var m = (MainWindow)Application.Current.MainWindow;
            m.Page.Content = new LogInPage();
        }

        private void Zerejestruj_Click(object sender, RoutedEventArgs e)
        {
            var m = (MainWindow)Application.Current.MainWindow;
            m.Page.Content = new registration();
        }

        private void Koszyk_Click(object sender, RoutedEventArgs e)
        {
            var m = (MainWindow)Application.Current.MainWindow;
            m.Page.Content = new BasketPage();
        }
    }
}