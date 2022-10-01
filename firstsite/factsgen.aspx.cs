using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.IO;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace firstsite
{
  public partial class factsgen : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
            String currurl = HttpContext.Current.Request.RawUrl;
            String querystring = null;

            // Check to make sure some query string variables
            // exist and if not add some and redirect.
            int iqs = currurl.IndexOf('?');
            if (iqs == -1)
            {
                String redirecturl = currurl + "?category";
                Response.Redirect(redirecturl, true);
            }
            // If query string variables exist, put them in
            // a string.
            else if (iqs >= 0)
            {
                try { querystring = (iqs < currurl.Length - 1) ? currurl.Substring(iqs + 10) : String.Empty; }
                catch (ArgumentOutOfRangeException argumentOutOfRangeException)
                {
                    Console.WriteLine($"Error: {argumentOutOfRangeException.Message}");
                }

            }

            //// Parse the query string variables into a NameValueCollection.
            //NameValueCollection qscoll = HttpUtility.ParseQueryString(querystring);

            //// Iterate through the collection.
            //StringBuilder sb = new StringBuilder("<br />");
            //foreach (String s in qscoll.AllKeys)
            //{
            //    sb.Append(s + " - " + qscoll[s] + "<br />");
            //}

            // Write the result to a label.
            if (querystring == "history")
            {
                headline.InnerText = "היסטוריה";
                fact.InnerText = "Did you know that the acteks ate corn?";
            }
            
            else if(querystring == "israel")
            {
                headline.InnerText = "מדינת ישראל";
                fact.InnerText = "Did you know that Israel was declared in 1948?";
            } 
            
            else if(querystring == "nature")
            {
                headline.InnerText = "טבע";
                fact.InnerText = "Did you know that nature is natural?";
            }
            
            else if (querystring == "food")
            {
                headline.InnerText = "אוכל";
                fact.InnerText = "Did you know that food is tasty?";
            } 
            
            else if (querystring == "animals")
            {
                headline.InnerText = "בעלי חיים";
                fact.InnerText = "Did you know that animals are cool?";
            }
            
            else if(querystring == "language")
            {
                headline.InnerText = "לשון";
                fact.InnerText = "Did you know that language isn't cool?";
            } 
            
            else
            {
                fact.InnerText = "404 - Category not found!";
            }   
        }

  }
}