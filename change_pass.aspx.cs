using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Dist_Cloud
{
    public partial class change_pass : System.Web.UI.Page
    {
        DBConn db = new DBConn(new nodeDB().masterDB);
        string fn, mn, ln, uid;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FNAME"] == null)
                Response.Redirect("index.aspx");
            fn = Session["FNAME"].ToString();

            mn = Session["MNAME"].ToString();
            ln = Session["LNAME"].ToString();
            uid = Session["UID"].ToString();

            Session["FNAME"] = fn;

            Session["MNAME"] = mn;
            Session["LNAME"] = ln;
            Session["UID"] = uid;
            Label1.Text = "  " + fn + " " + ln;
            Label3.Text = uid;

            db.con.Open();
            SqlDataReader dr = db.getDataReader("SELECT * FROM regTABLE WHERE EMAIL='" + uid + "'");

            if (dr.Read())
            {
                id = Convert.ToInt32(dr[0].ToString());
                OPASS.Text = dr[10].ToString();

            }
            dr.Close();
            db.con.Close();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            db.con.Open();

            db.InsertData("UPDATE regTABLE SET PASSWORD='" + CFPASS.Text + "' WHERE EMAIL='" + uid + "'");
            db.con.Close();
        }
    }
}