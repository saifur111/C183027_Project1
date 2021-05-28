using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C183027_Project1
{
    public partial class testTypeSetup : System.Web.UI.Page
    {
        public databaseConnection dataCon = new databaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void typeNameSave_Click(object sender, EventArgs e)
        {
            Receptionist adminInput = new Receptionist();
            adminInput.typeName = typeNameInput.Value;
            if (!string.IsNullOrEmpty(adminInput.typeName))
            {
                SqlConnection conn = new SqlConnection(dataCon.server);

                string checkTypeName = "select count(*) from testTypeSetupDB where TypeName='" + adminInput.typeName + "'";
                SqlCommand cmd = new SqlCommand(checkTypeName, conn);
                //cmd.Parameters.AddWithValue("TypeName", typeNameInput.Value);
                conn.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    view.Text = "Test Name Already Exist";
                }
                else
                {
                    string qry = "INSERT INTO testTypeSetupDB VALUES ('" + adminInput.typeName + "')";
                    SqlCommand sq = new SqlCommand(qry, conn);
                    int row = sq.ExecuteNonQuery();
                    if (row > 0)
                    {
                        view.Text = "Successfull";
                    }
                    else
                    {
                        view.Text = "Not Successfull!";
                    }
                }

                conn.Close();
            }
        }
    }
}