using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Mare_Telor_Tutorial
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string message = string.Format("Votre nom est {0}, votre âge est : {1}, votre adresse mail est : {2}, votre couleur favorite est {3}",
                txtName.Text, txtAge.Text, txtEmail.Text, ddlColor.SelectedValue);

            ltMessage.Text = message;
        }
    }
}