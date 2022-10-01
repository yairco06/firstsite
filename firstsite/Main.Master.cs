using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace firstsite
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try {
                if (Session["Login"] != null)
                {
                    if ((bool)Session["Login"] == true)
                    {
                        welcomenav.InnerText = "שלום " + (string)Session["fname"];
                        login.HRef = "/contact.aspx";
                        login.InnerText = "פרטי הזדהות";
                    }
                }
            }
            catch { }
        }
        
    }
}