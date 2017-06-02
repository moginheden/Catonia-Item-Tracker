using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Catonia_Item_Tracker
{
    public partial class FrmLoading : Form
    {
        //Delegate for cross thread call to close
        private delegate void CloseDelegate();

        //The type of form to be displayed as the splash screen.
        private static FrmLoading splashForm;

        private static string textToUse = null;

        static public void ShowSplashScreen()
        {
            // Make sure it is only launched once.
            if (splashForm != null)
                return;
            Thread thread = new Thread(new ThreadStart(FrmLoading.ShowForm));
            thread.IsBackground = true;
            thread.SetApartmentState(ApartmentState.STA);
            thread.Start();
        }

        static private void ShowForm()
        {
            splashForm = new FrmLoading();
            Application.Run(splashForm);
        }

        static public void CloseForm()
        {
            splashForm.Invoke(new CloseDelegate(FrmLoading.CloseFormInternal));
        }

        static private void CloseFormInternal()
        {
            splashForm.Close();
        }

        public FrmLoading()
        {
            InitializeComponent();

            if(textToUse != null)
            {
                lblCurrent.Text = textToUse;
            }
        }

        static public void setText(string text)
        {
            //if the form is not loaded yet, save the text
            if(splashForm == null)
            {
                textToUse = text;
            }
            else //otherwise update the label now
            {
                splashForm.Invoke(new Action(() => splashForm.lblCurrent.Text = text));
            }
        }
    }
}
