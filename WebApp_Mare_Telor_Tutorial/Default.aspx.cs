﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Mare_Telor_Tutorial
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRedirectContactPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Contact");
        }
    }
}