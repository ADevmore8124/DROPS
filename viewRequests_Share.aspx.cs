
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.IO;


namespace Dist_Cloud
{
    public partial class viewRequests_Share : System.Web.UI.Page
    {
        string fn, mn, ln, uid, SKey, rptName, roll;
        DBConn db = new DBConn(new nodeDB().masterDB);
        DecryptionClass dn = new DecryptionClass();
        SendMAIL sm = new SendMAIL();

        dataD kde = new dataD();
        dataE ken = new dataE();
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



            Label8.Text = fn + " " + ln;

            if (GridView1.Rows.Count > 0)
            {
                Button1.Visible = true;
                err.Text = " ";
            }
            else
            {
                Button1.Visible = false;
                err.Text = "Shared files not found...";
            }
        }

        protected void getSKey()
        {

            try
            {
                db.con.Open();
                SqlDataReader dr = db.getDataReader("SELECT SKEY FROM skeyTABLE WHERE UID='" + Label12.Text + "'");

                if (dr.Read())
                {
                    SKey = dr[0].ToString();
                }

                db.con.Close();
                SKey = kde.Decrypt(SKey, true, Label12.Text);

            }
            catch (Exception ex)
            {
                err.Text = ex.Message.ToString();

            }


        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            Label9.Text = DropDownList2.Text;

            db.con.Open();
            int id = db.getCurrentID("shareTABLE");
            db.InsertData("INSERT INTO shareTABLE VALUES('" + id + "','" + uid + "','" + DropDownList1.Text + "','" + DropDownList2.SelectedItem.ToString() + "','" + Label9.Text + "','" + DateTime.Today.ToShortDateString() + "')");
            db.con.Close();

        }
        protected void indList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            Label4.Text = GridView1.SelectedRow.Cells[1].Text;
            Label10.Text = GridView1.SelectedRow.Cells[3].Text;
            Label12.Text = GridView1.SelectedRow.Cells[2].Text;

        }
        protected void Button5_Click(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string strURL = "";

            string pkey1, pkey2, pkey3;
            try
            {

                DataTable mdb1, mdb2, dt1, dt2, dt3;

                mdb1 = db.GetDataTable("SELECT FILE_NAME FROM dataMASTER WHERE ID=" + Convert.ToInt32(Label10.Text));
                mdb2 = db.GetDataTable("SELECT * FROM loadMASTER WHERE FNO=" + Convert.ToInt32(Label10.Text));

                string n1, n2, n3;
                string rn1, rn2, rn3;
                n1 = mdb2.Rows[0][1].ToString();
                n1 = n1.Substring(n1.Length - 1);

                n2 = mdb2.Rows[0][2].ToString();
                n2 = n2.Substring(n2.Length - 1);

                n3 = mdb2.Rows[0][3].ToString();
                n3 = n3.Substring(n3.Length - 1);
                //----------------------replication-------------------
                rn1 = mdb2.Rows[0][4].ToString();
                rn1 = rn1.Substring(rn1.Length - 1);

                rn2 = mdb2.Rows[0][5].ToString();
                rn2 = rn2.Substring(rn2.Length - 1);

                rn3 = mdb2.Rows[0][6].ToString();
                rn3 = rn3.Substring(rn3.Length - 1);

                DBConn nod1 = null;
                DBConn nod2 = null;
                DBConn nod3 = null;
                //-----------round1-------------------
                if (n1.Equals("1"))
                {
                    nod1 = new DBConn(new nodeDB().nod1str);
                }
                if (n1.Equals("2"))
                {
                    nod1 = new DBConn(new nodeDB().nod2str);
                }
                if (n1.Equals("3"))
                {
                    nod1 = new DBConn(new nodeDB().nod3str);
                }
                //-----------round2-------------------
                if (n2.Equals("1"))
                {
                    nod2 = new DBConn(new nodeDB().nod1str);
                }
                if (n2.Equals("2"))
                {
                    nod2 = new DBConn(new nodeDB().nod2str);
                }
                if (n2.Equals("3"))
                {
                    nod2 = new DBConn(new nodeDB().nod3str);
                }
                //-----------round3-------------------
                if (n3.Equals("1"))
                {
                    nod3 = new DBConn(new nodeDB().nod1str);
                }
                if (n3.Equals("2"))
                {
                    nod3 = new DBConn(new nodeDB().nod2str);
                }
                if (n3.Equals("3"))
                {
                    nod3 = new DBConn(new nodeDB().nod3str);
                }

                //-------------Replication------------------
                DBConn Rnod1 = null;
                DBConn Rnod2 = null;
                DBConn Rnod3 = null;

                //-----------round1-------------------
                if (rn1.Equals("1"))
                {
                    Rnod1 = new DBConn(new nodeDB().Rnod1str);
                }
                if (rn1.Equals("2"))
                {
                    Rnod1 = new DBConn(new nodeDB().Rnod2str);
                }
                if (rn1.Equals("3"))
                {
                    Rnod1 = new DBConn(new nodeDB().Rnod3str);
                }
                //-----------round2-------------------
                if (rn2.Equals("1"))
                {
                    Rnod2 = new DBConn(new nodeDB().Rnod1str);
                }
                if (rn2.Equals("2"))
                {
                    Rnod2 = new DBConn(new nodeDB().Rnod2str);
                }
                if (rn2.Equals("3"))
                {
                    Rnod2 = new DBConn(new nodeDB().Rnod3str);
                }
                //-----------round3-------------------
                if (rn3.Equals("1"))
                {
                    Rnod3 = new DBConn(new nodeDB().Rnod1str);
                }
                if (rn3.Equals("2"))
                {
                    Rnod3 = new DBConn(new nodeDB().Rnod2str);
                }
                if (rn3.Equals("3"))
                {
                    Rnod3 = new DBConn(new nodeDB().Rnod3str);
                }

                dt1 = nod1.GetDataTable("SELECT FILEDATA,PKEY,FSIZE FROM dataTABLE WHERE ID=" + Convert.ToInt32(Label10.Text));
                if (dt1.Rows.Count == 0)
                    dt1 = Rnod1.GetDataTable("SELECT FILEDATA,PKEY,FSIZE FROM dataTABLE WHERE ID=" + Convert.ToInt32(Label10.Text));

                dt2 = nod2.GetDataTable("SELECT FILEDATA,PKEY,FSIZE FROM dataTABLE WHERE ID=" + Convert.ToInt32(Label10.Text));
                if (dt2.Rows.Count == 0)
                    dt2 = Rnod2.GetDataTable("SELECT FILEDATA,PKEY,FSIZE FROM dataTABLE WHERE ID=" + Convert.ToInt32(Label10.Text));

                dt3 = nod3.GetDataTable("SELECT FILEDATA,PKEY,FSIZE FROM dataTABLE WHERE ID=" + Convert.ToInt32(Label10.Text));
                if (dt3.Rows.Count == 0)
                    dt3 = Rnod3.GetDataTable("SELECT FILEDATA,PKEY,FSIZE FROM dataTABLE WHERE ID=" + Convert.ToInt32(Label10.Text));


                int fl = Convert.ToInt32(dt1.Rows[0][2]) + Convert.ToInt32(dt2.Rows[0][2]) + Convert.ToInt32(dt3.Rows[0][2]);
                int p1 = fl / 3;

                int p2 = (p1) + p1;

                strURL = mdb1.Rows[0][0].ToString();

                //-------------------------------------

                pkey1 = dt1.Rows[0][1].ToString();

                pkey2 = dt2.Rows[0][1].ToString();

                pkey3 = dt3.Rows[0][1].ToString();

                //-----------------------------------------------

                byte[] part1 = new byte[p1];

                byte[] part2 = new byte[(p2 - p1)];

                byte[] part3 = new byte[(fl - (p2))];


                byte[] fd = new byte[fl];

                part1 = (byte[])dt1.Rows[0][0];
                part2 = (byte[])dt2.Rows[0][0];
                part3 = (byte[])dt3.Rows[0][0];
                //----------------------------Data Decryption-----------------------------------------
                getSKey();
                part1 = dn.decryptData(part1, SKey, pkey1);

                part2 = dn.decryptData(part2, SKey, pkey2);

                part3 = dn.decryptData(part3, SKey, pkey3);

                //-----------------------------------------------------------------------


                System.Buffer.BlockCopy(part1, 0, fd, 0, p1);

                System.Buffer.BlockCopy(part2, 0, fd, p1, (p2 - p1));

                System.Buffer.BlockCopy(part3, 0, fd, p2, (fl - p2));


                WebClient req = new WebClient();
                HttpResponse response = HttpContext.Current.Response;
                response.Clear();
                response.ClearContent();
                response.ClearHeaders();
                response.Buffer = true;
                response.AddHeader("Content-Disposition", "attachment;filename=\"" + strURL + "\"");
                // byte[] data = req.DownloadData(Server.MapPath(strURL));

                response.BinaryWrite(fd);
                response.End();




            }
            catch (Exception ex)
            {
                err.Text = ex.Message.ToString();

            }
        }
    }
}