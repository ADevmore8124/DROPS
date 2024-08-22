using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Dist_Cloud
{

    public class DBConn
    {
        public SqlConnection con = new SqlConnection();
        public SqlCommand com = new SqlCommand();
        public SqlCommand com1 = new SqlCommand();
        public SqlCommand com2 = new SqlCommand();
        public int fbill_no;

        public SqlDataReader dr = null;


        public DBConn(string constr)
        {
            con.ConnectionString = constr;
            //con.ConnectionString = @"Server=10.202.6.140;Database=phr;User Id=sa;Password=MSRytm77538";
            //con.ConnectionString = @"Server=mssql42929-env-1161274.whelastic.net:1433;Database=phr;Initial Catalog= phr;Integrated Security=False;User ID=anut;Password=phr123";



            com.Connection = con;
            com1.Connection = con;
            com2.Connection = con;

        }

        public int getMAXINV(String qq)
        {
            int totalRows = 0;
            com.CommandText = qq;
            if (com.ExecuteScalar().Equals(DBNull.Value))
            {
                totalRows = 0;
            }
            else
            {
                totalRows = Convert.ToInt32(com.ExecuteScalar());
            }


            return totalRows;
        }

        public int getCurrentID(String tableName)
        {
            int totalRows = 0;
            com.CommandText = "Select MAX(ID) from " + tableName;
            if (com.ExecuteScalar().Equals(DBNull.Value))
            {
                totalRows = 0;
            }
            else
            {
                totalRows = Convert.ToInt32(com.ExecuteScalar());
            }


            return totalRows + 1;
        }
        public int getCurrentINVID(String tableName)
        {
            int totalRows = 0;
            com.CommandText = "Select MAX(INV_NO) from " + tableName;
            if (com.ExecuteScalar().Equals(DBNull.Value))
            {
                totalRows = 0;
            }
            else
            {
                totalRows = Convert.ToInt32(com.ExecuteScalar());
            }


            return totalRows + 1;
        }
        public void InsertData(string strQuery)
        {

            com.CommandText = strQuery;
            com.ExecuteNonQuery();
        }
        public void InsertFile(string strQuery, byte[] fdata)
        {

            com.CommandText = strQuery;
            com.Parameters.AddWithValue("@files", fdata);
            com.ExecuteNonQuery();
        }
        public int deleteData(string strQuery)
        {

            com.CommandText = strQuery;
            int t = com.ExecuteNonQuery();

            return t;
        }
        public SqlDataReader getDataReader(string strQuery)
        {
            SqlDataReader dr2 = null;
            com.CommandText = strQuery;
            dr2 = com.ExecuteReader();
            return dr2;
        }

        public DataTable GetDataTable(string query)
        {
            DataTable dt = null;
            try
            {
                DataSet dss = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(dss);
                dt = dss.Tables[0];
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }

            return dt;
        }

    }
}