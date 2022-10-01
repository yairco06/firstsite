using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace firstsite
{
    public partial class facts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["id"] = "0";
        }
        protected void Facts_history(object sender, EventArgs e)
        {
            Session["id"] = "1";
        }
        protected void Facts_israel(object sender, EventArgs e)
        {
            Session["id"] = "2";
        }
    }
}