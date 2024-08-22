using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dist_Cloud
{

    public partial class index : System.Web.UI.Page
    {

        DBConn db = new DBConn(new nodeDB().masterDB);
        string roll;
        int f = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (UserName.Text.Equals("Admin") && Password.Text.Equals("admin"))
            {

                Session["FNAME"] = "Admin";

                Session["UID"] = "Admin";

                Response.Redirect("Admin_Home.aspx");
            }
            else
            {
                SqlDataAdapter sd = new SqlDataAdapter("SELECT * FROM regTABLE WHERE EMAIL='" + UserName.Text + "' AND PASSWORD='" + Password.Text + "'", db.con);
                DataSet ds = new DataSet();
                sd.Fill(ds);


                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["FNAME"] = ds.Tables[0].Rows[0]["FIRST_NAME"].ToString();
                    Session["MNAME"] = ds.Tables[0].Rows[0]["MIDDLE_NAME"].ToString();
                    Session["LNAME"] = ds.Tables[0].Rows[0]["LAST_NAME"].ToString();
                    Session["UID"] = UserName.Text;



                    f = 1;


                }
                else
                    Label1.Text = "Please verify Username or Password";

                if (f == 1)
                    Response.Redirect("homepage.aspx");
            }

        }
    }
}