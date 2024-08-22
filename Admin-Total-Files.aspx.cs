using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dist_Cloud
{
    public partial class Admin_Total_Files : System.Web.UI.Page
    {
        string fn, mn, ln, uid, SKey, rptName, roll;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FNAME"].ToString() == null)
                Response.Redirect("index.aspx");
            fn = Session["FNAME"].ToString();

            uid = Session["UID"].ToString();

            Session["FNAME"] = fn;

            Session["UID"] = uid;

            Label8.Text = fn;

            if (GridView1.Rows.Count < 1)
            {
                Label1.Text = "No any file data found....";

            }

        }
    }
}