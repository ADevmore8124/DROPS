using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dist_Cloud
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            Session["FNAME"] = "";
            Session["MNAME"] = "";
            Session["LNAME"] = "";
            Session["UID"] = "";
            Session["ROLE"] = "";
            Response.Redirect("index.aspx");

        }
    }
}