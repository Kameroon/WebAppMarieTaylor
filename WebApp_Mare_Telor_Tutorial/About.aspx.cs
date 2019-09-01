using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Mare_Telor_Tutorial
{
    public partial class About : Page
    {
        private List<MyEvent> myEvents;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["MyEvents"] = new List<MyEvent>();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        private void UpdateEvents()
        {
            if (Session["MyEvents"] != null)
            {
                myEvents = (List<MyEvent>)Session["MyEvents"];
            }
            else
            {
                myEvents = new List<MyEvent>();
            }
        }
    }

    #region -- Events --
    public class MyEvent
    {
        public string EventName { get; private set; }

        public string EventDate { get; private set; }

        public MyEvent(string eventName, DateTime eventDate)
        {
            EventName = eventName;
            EventDate = eventDate.ToShortDateString();
        }
    }
    #endregion
}