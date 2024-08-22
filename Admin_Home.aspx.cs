using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dist_Cloud
{
    public partial class Admin_Home : System.Web.UI.Page
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
                err.Text = "No any file data found....";
              
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["FUID"] = GridView1.SelectedRow.Cells[4].Text;
            Response.Redirect("Admin-Total-Files.aspx");
        }
    }
}