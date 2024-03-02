using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DBProject
{
    internal class mobile
    {
        SqlConnection conn = new SqlConnection();
        public mobile(string connstr)
        {
            conn.ConnectionString = connstr;
        }
        public DataTable returnrec(string srch)
        {
            srch = "select * from Company";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = srch;
            cmd.Connection = conn;
            da.SelectCommand = cmd;
            da.Fill(dt);
            return dt;
        }
        public DataTable return_btn_rec(string srch = "select * from Company")
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = srch;
            cmd.Connection = conn;
            da.SelectCommand = cmd;
            da.Fill(dt);
            return dt;
        }
    }
}
