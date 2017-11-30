using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
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

namespace Szyfr_DES_ECB_CBC
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        static byte[] iv;
        char[] bytesArr;
        static byte[] bytes;
        public static string Deszyfrowanie(string encryptedString, string tryb, byte[] klucz)
        {
            DESCryptoServiceProvider desProvider = new DESCryptoServiceProvider();
            if (tryb == "CBC")
            {
                desProvider.IV = iv;
                desProvider.Mode = CipherMode.CBC;
            }
            else
            {
                desProvider.Mode = CipherMode.ECB;
            }
            desProvider.Padding = PaddingMode.PKCS7;
            desProvider.Key = klucz;
            using (MemoryStream stream = new MemoryStream(Convert.FromBase64String(encryptedString)))
            {
                using (CryptoStream cs = new CryptoStream(stream, desProvider.CreateDecryptor(), CryptoStreamMode.Read))
                {
                    using (StreamReader sr = new StreamReader(cs, Encoding.ASCII))
                    {
                        return sr.ReadToEnd();
                    }
                }
            }
        }
        public static string Szyfrowanie(string czystyTekst, string tryb, byte[] klucz)
        {
            DESCryptoServiceProvider desProvider = new DESCryptoServiceProvider();
            if (tryb == "CBC")
            {
                iv = new byte[8];
                RNGCryptoServiceProvider provider = new RNGCryptoServiceProvider();
                provider.GetBytes(iv);
                desProvider.IV = iv;
                desProvider.Mode = CipherMode.CBC;
            }
            else
            {
                desProvider.Mode = CipherMode.ECB;
            }
            desProvider.Padding = PaddingMode.PKCS7;
            desProvider.Key = klucz;
            using (MemoryStream stream = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(stream, desProvider.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    byte[] data = Encoding.Default.GetBytes(czystyTekst);
                    cs.Write(data, 0, data.Length);
                    cs.FlushFinalBlock(); // <-- Add this
                    return Convert.ToBase64String(stream.ToArray());
                }
            }
        }      
        private void szyfruj(object sender, RoutedEventArgs e)
        {

            var wybor = ((ComboBoxItem)ComboBoxTryb.SelectedItem).Content as string;
            try
            {
                TxtBoxSzyf.Text = Szyfrowanie(TxtBoxNieszyf.Text, wybor, bytes);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void deszyfruj(object sender, RoutedEventArgs e)
        {
            var wybor = ((ComboBoxItem)ComboBoxTryb.SelectedItem).Content as string;
            try
            {
                TxtBoxRoszyf.Text = Deszyfrowanie(TxtBoxZaszyf.Text, wybor, bytes);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void ButtKopiuj_Click(object sender, RoutedEventArgs e)
        {
            TxtBoxZaszyf.Text = TxtBoxSzyf.Text;
        }

        private void Klucz_LostFocus(object sender, RoutedEventArgs e)
        {
            bytesArr = TxtBoxKlucz.Text.ToCharArray();
            ASCIIEncoding.ASCII.GetBytes(bytesArr);
            bytes = ASCIIEncoding.ASCII.GetBytes(bytesArr);
        }
    }
}
