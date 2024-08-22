using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Dist_Cloud
{
  
    public partial class phrProfileInfo : System.Web.UI.Page
    {
        string fn, mn, ln, uid, SKey, rptName, roll, id, pass;
        DBConn db = new DBConn(new nodeDB().masterDB);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FNAME"] == null)
                Response.Redirect("index.aspx");
            fn = Session["FNAME"].ToString();
            mn = Session["MNAME"].ToString();
            ln = Session["LNAME"].ToString();
            uid = Session["UID"].ToString();

            DataTable dt = db.GetDataTable("SELECT * FROM regTABLE WHERE EMAIL='" + uid + "'");
            id = dt.Rows[0][0].ToString();
            fname.Text = dt.Rows[0][1].ToString();
            mName.Text = dt.Rows[0][2].ToString();
            lName.Text = dt.Rows[0][3].ToString();
            gender.Text = dt.Rows[0][4].ToString();
            dob.Text = dt.Rows[0][5].ToString();
            addr1.Text = dt.Rows[0][6].ToString();
            addr2.Text = dt.Rows[0][7].ToString();
            email.Text = dt.Rows[0][8].ToString();
            email.Enabled = false;
            mob.Text = dt.Rows[0][9].ToString();
            pass = dt.Rows[0][10].ToString();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            db.con.Open();
            db.deleteData("DELETE FROM regTABLE WHERE EMAIL='" + uid + "'");
            db.InsertData("INSERT INTO regTABLE VALUES('" + id + "','" + fname.Text + "','" + mName.Text + "','" + lName.Text + "','" + gender.Text + "','" + dob.Text + "','" + addr1.Text + "','" + addr2.Text + "','" + email.Text + "','" + (cntcode.Text + mob.Text) + "','" + pass + "')");
            Response.Redirect("phrProfileInfo.aspx");
            db.con.Close();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}