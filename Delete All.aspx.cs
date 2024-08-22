using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dist_Cloud
{
    public partial class Delete_All : System.Web.UI.Page
    {
        keyGen k = new keyGen();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DBConn db = new DBConn(new nodeDB().masterDB);

            DBConn nod1 = new DBConn(new nodeDB().nod1str);
            DBConn nod2 = new DBConn(new nodeDB().nod2str);
            DBConn nod3 = new DBConn(new nodeDB().nod3str);

            db.con.Open();
            db.deleteData("DELETE FROM dataMASTER");
            db.deleteData("DELETE FROM regTABLE");
            db.deleteData("DELETE FROM skeyTABLE");
            db.deleteData("DELETE FROM shareTABLE");
            db.deleteData("DELETE FROM loadMASTER");
            db.con.Close();

            nod1.con.Open();
            nod1.deleteData("DELETE FROM dataTABLE");
            nod1.con.Close();

            nod2.con.Open();
            nod2.deleteData("DELETE FROM dataTABLE");
            nod2.con.Close();

            nod3.con.Open();
            nod3.deleteData("DELETE FROM dataTABLE");
            nod3.con.Close();


            DBConn Rnod1 = new DBConn(new nodeDB().Rnod1str);
            DBConn Rnod2 = new DBConn(new nodeDB().Rnod2str);
            DBConn Rnod3 = new DBConn(new nodeDB().Rnod3str);

            Rnod1.con.Open();
            Rnod1.deleteData("DELETE FROM dataTABLE");
            Rnod1.con.Close();


            Rnod2.con.Open();
            Rnod2.deleteData("DELETE FROM dataTABLE");
            Rnod2.con.Close();


            Rnod3.con.Open();
            Rnod3.deleteData("DELETE FROM dataTABLE");
            Rnod3.con.Close();


            Label1.Text = "Delete all values...";


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string n_node = k.RNodeNO();
            Label1.Text = n_node;
            string n1 = n_node.Substring(0,1);
            string n2 = n_node.Substring(1,1);
            string n3 = n_node.Substring(n_node.Length-1);

            //----------------------------------------

            Label2.Text = "" + n1;
            Label3.Text = "" + n2;
           Label4.Text = "" + n3;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string t="file.txt_2";
            string n3 = t.Substring(t.Length - 1);
            Label5.Text = n3;
        }
    }
}