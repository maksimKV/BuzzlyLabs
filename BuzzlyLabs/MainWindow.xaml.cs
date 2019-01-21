using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;

namespace BuzzlyLabs
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window, INotifyPropertyChanged
    {
        public Stack<string> inputStack = new Stack<string>();
        public Cache<string, string> cachedValues = new Cache<string, string>();

        public string StackValues { get; set; }
        public string KeyValue { get; set; }
        public string Value { get; set; }
        public string SearchKey { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;

        public MainWindow()
        {
            InitializeComponent();
            DataContext = this;
        }

        private void AddToStack(object sender, RoutedEventArgs e)
        {
            addStackValues.GetBindingExpression(TextBox.TextProperty).UpdateSource();

            if (!Validation.GetHasError(addStackValues))
            {
                string input = addStackValues.Text;
                inputStack.Push(input);
            }
        }

        private void GetFromStack(object sender, RoutedEventArgs e)
        {
            if (inputStack.Count != 0)
            {
                string item = inputStack.Pop();
                returnedStackValue.Text = item;
            }
            else
            {
                returnedStackValue.Text = "There are no items in the stack!";
            }
        }

        private void AddToStore(object sender, RoutedEventArgs e)
        {
            addKey.GetBindingExpression(TextBox.TextProperty).UpdateSource();
            addValue.GetBindingExpression(TextBox.TextProperty).UpdateSource();

            if (!Validation.GetHasError(addKey) && !Validation.GetHasError(addValue))
            {
                string key = addKey.Text;
                string value = addValue.Text;

                cachedValues.Store(key, value, TimeSpan.FromSeconds(30));
            }    
        }

        private void GetFromStore(object sender, RoutedEventArgs e)
        {
            searchKey.GetBindingExpression(TextBox.TextProperty).UpdateSource();

            if (!Validation.GetHasError(searchKey))
            {
                string key = searchKey.Text;

                string returnedValue = cachedValues.Get(key);

                if (!string.IsNullOrEmpty(returnedValue))
                {
                    storeValue.Text = returnedValue;
                }
                else
                {
                    storeValue.Text = "No value found. Try another key.";
                }
            }
        }

        private void OnPropertyChanged(string property)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(property));
        }
    }
}
