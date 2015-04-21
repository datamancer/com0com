using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace MainPower.Com0com.Redirector
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public ObservableCollection<com0comPortPair> PortPairs { get; set; }

        public MainWindow()
        {
            
            PortPairs = com0comPortPair.GetPortPairs();
            InitializeComponent();
            cboCommsMode.ItemsSource = Enum.GetValues(typeof(CommsMode));
        }

        private void btnStart_Click(object sender, RoutedEventArgs e)
        {
            com0comPortPair port = listPorts.SelectedValue as com0comPortPair;
            if (port != null)
            {
                port.StartComms();
            }
        }

        private void btnStop_Click(object sender, RoutedEventArgs e)
        {
            com0comPortPair port = listPorts.SelectedValue as com0comPortPair;
            if (port != null)
            {
                port.StopComms();
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            foreach (var pair in PortPairs)
            {
                pair.StopComms();
            }
        }

        private void btnPortSelect_Click(object sender, RoutedEventArgs e)
        {
            PortsDBSelect win = new PortsDBSelect();
            win.ShowDialog();
            if (win.Result != null)
            {
                com0comPortPair p;
                if ((p = listPorts.SelectedValue as com0comPortPair) != null)
                {
                    p.CommsMode = win.Result.Mode;
                    p.LocalPort = win.Result.LocalPort;
                    p.RemoteIP = win.Result.RemoteIP;
                    p.RemotePort= win.Result.RemotePort;
                }
            }
        }


    }
}
