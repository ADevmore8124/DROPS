using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Dist_Cloud
{
    public class nodeDB
    {
        public nodeDB()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public string masterDB = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";


        public string nod1str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Node1.mdf;Integrated Security=True;User Instance=True";
        public string nod2str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Node2.mdf;Integrated Security=True;User Instance=True";
        public string nod3str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Node3.mdf;Integrated Security=True;User Instance=True";

        public string Rnod1str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RNode1.mdf;Integrated Security=True;User Instance=True";
        public string Rnod2str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RNode2.mdf;Integrated Security=True;User Instance=True";
        public string Rnod3str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RNode3.mdf;Integrated Security=True;User Instance=True";

       
     
        public void dbstr()
        {
            masterDB = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True";


            nod1str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Node1.mdf;Integrated Security=True;User Instance=True";
            nod2str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Node2.mdf;Integrated Security=True;User Instance=True";
            nod3str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Node3.mdf;Integrated Security=True;User Instance=True";

        Rnod1str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RNode1.mdf;Integrated Security=True;User Instance=True";
        Rnod2str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RNode2.mdf;Integrated Security=True;User Instance=True";
        Rnod3str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RNode3.mdf;Integrated Security=True;User Instance=True";

         
        }
    }
}