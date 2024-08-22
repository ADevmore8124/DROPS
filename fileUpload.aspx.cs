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
    public partial class fileUpload : System.Web.UI.Page
    {
        DBConn db = new DBConn(new nodeDB().masterDB);
        keyGen k = new keyGen();
        EncryptionClass en = new EncryptionClass();

        dataD kde = new dataD();
        dataE ken = new dataE();

        int id;
        string fn, ln, uid, skey, mn, roll;
        string dob, kdob;
        string pkey1, pkey2, pkey3;
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
            db.con.Open();
            id = db.getCurrentID("dataMASTER");
            db.con.Close();
            fileID.Text = id.ToString();

        }
        protected void keycall()
        {
            db.con.Open();
            SqlDataReader dr = db.getDataReader("SELECT DOB FROM regTABLE WHERE EMAIL='" + uid + "'");

            if (dr.Read())
            {
                dob = dr[0].ToString();
            }
            char[] c = dob.ToCharArray();
            for (int i = 0; i < c.Length; i++)
            {
                string t = c[i].ToString();
                if (!t.Equals("/"))
                    kdob = kdob + c[i];
            }
            db.con.Close();

            db.con.Open();
            SqlDataReader dr2 = db.getDataReader("SELECT SKEY FROM skeyTABLE WHERE UID='" + uid + "'");

            if (dr2.Read())
            {
                skey = dr2[0].ToString();
            }
            skey = kde.Decrypt(skey, true, uid);
            db.con.Close();
            pkey1 = k.createPKey(kdob, skey);
            pkey2 = k.createPKey(kdob, skey);
            pkey3 = k.createPKey(kdob, skey);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            byte[] fileContent;

            try
            {
                fileContent = new byte[FileUpload1.PostedFile.InputStream.Length + 1];
                FileUpload1.PostedFile.InputStream.Read(fileContent, 0, fileContent.Length);

                byte[] fd = new byte[fileContent.Length + 1];
                int fl = fileContent.Length;
                Label4.Text = fl.ToString();

                string fn = FileUpload1.FileName.ToString();
                int dot = fn.LastIndexOf('.');

                int len = fn.Length;

                string ext = fn.Substring(dot);

                int p1 = fl / 3;
                Label3.Text = "0 to " + p1.ToString();

                int p2 = (p1) + p1;

                byte[] part1 = new byte[p1];

                byte[] part2 = new byte[(p2 - p1)];

                byte[] part3 = new byte[(fl - (p2))];

                Label4.Visible = true;
                Label3.Visible = true;
                Label2.Visible = true;


                System.Buffer.BlockCopy(fileContent, 0, part1, 0, p1);

                System.Buffer.BlockCopy(fileContent, p1, part2, 0, (p2 - p1));

                System.Buffer.BlockCopy(fileContent, p2, part3, 0, (fl - p2));

                //--------------------------Data Encryption-------------------------------------------

                keycall();

                part1 = en.encryptData(part1, skey, pkey1);

                part2 = en.encryptData(part2, skey, pkey2);

                part3 = en.encryptData(part3, skey, pkey3);



                string n_node = k.RNodeNO();
               
                string n1 = n_node.Substring(0, 1);
                string n2 = n_node.Substring(1, 1);
                string n3 = n_node.Substring(n_node.Length - 1);

                DBConn nod1=null;
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

                db.con.Open();
                db.InsertData("INSERT INTO dataMASTER VALUES('" + id + "','" + uid + "','" + fn + "','" + DateTime.Now.ToString() + "')");
               // db.InsertData("INSERT INTO loadMASTER VALUES('" + id + "','" + n1 + "','" + n2 + "','" + n3 + "','" + rn1 + "','" + rn2 + "','" + rn3 + "')");
                db.con.Close();

                nod1.con.Open();
                nod1.InsertFile("INSERT INTO dataTABLE VALUES('" + id + "',@files,'" + ((p2 - p1)).ToString() + "','" + pkey1 + "')", part1);
                nod1.con.Close();

                nod2.con.Open();
                nod2.InsertFile("INSERT INTO dataTABLE VALUES('" + id + "',@files,'" + ((p2 - p1)).ToString() + "','" + pkey2 + "')", part2);
                nod2.con.Close();

                nod3.con.Open();
                nod3.InsertFile("INSERT INTO dataTABLE VALUES('" + id + "',@files,'" + (fl - p2).ToString() + "','" + pkey3 + "')", part3);
                nod3.con.Close();


                string Rn_node = k.RNodeNO();

                string rn1 = Rn_node.Substring(0, 1);
                string rn2 = Rn_node.Substring(1, 1);
                string rn3 = Rn_node.Substring(Rn_node.Length - 1);

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


                db.con.Open();
               // db.InsertData("INSERT INTO dataMASTER VALUES('" + id + "','" + uid + "','" + fileName.Text + "','" + DateTime.Now.ToString() + "')");
                db.InsertData("INSERT INTO loadMASTER VALUES('" + id + "','" + (fn+"_"+n1) + "','" + (fn+"_"+ n2) + "','" + (fn+"_"+ n3) + "','" + (fn+"_"+ rn1) + "','" + (fn+"_"+ rn2) + "','" + (fn+"_"+ rn3) + "')");
                db.con.Close();

                Rnod1.con.Open();
                Rnod1.InsertFile("INSERT INTO dataTABLE VALUES('" + id + "',@files,'" + ((p2 - p1)).ToString() + "','" + pkey1 + "')", part1);
                Rnod1.con.Close();

                Rnod2.con.Open();
                Rnod2.InsertFile("INSERT INTO dataTABLE VALUES('" + id + "',@files,'" + ((p2 - p1)).ToString() + "','" + pkey2 + "')", part2);
                Rnod2.con.Close();

                Rnod3.con.Open();
                Rnod3.InsertFile("INSERT INTO dataTABLE VALUES('" + id + "',@files,'" + (fl - p2).ToString() + "','" + pkey3 + "')", part3);
                Rnod3.con.Close();

                Response.Redirect("homepage.aspx");

            }
            catch (Exception ee)
            {
                Label1.Text = ee.Message.ToString();
            }

        }

        void splifile(byte[] fileContent, int p)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}