using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace C183027_Project1.Controller
{
    public class DatabaseConnection
    {
        protected string connectionSrting= @"Server=DESKTOP-N0MTD5D\SQLEXPRESS; Database=DiagnosticCBMSV2.29; Integrated Security= True";
        public string Query { get; set; }
        public SqlConnection Connection { get; set; }
        public SqlCommand Command { get; set; }
        public SqlDataReader Reader { get; set; }

        public DatabaseConnection()
        {
            Connection = new SqlConnection(connectionSrting);
        }
    }
}