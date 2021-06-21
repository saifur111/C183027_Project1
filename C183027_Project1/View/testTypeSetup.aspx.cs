using C183027_Project1.BillAdminLayer;
using C183027_Project1.Model;
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
        //public databaseConnection dataCon = new databaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void typeNameSave_Click(object sender, EventArgs e)
        {
            
                TestType aTestType = new TestType();
                aTestType.TestTypeName = typeNameInput.Value;

                TestManager aTestManager = new TestManager();
                outputLabel.Text = aTestManager.SaveTestType(aTestType);
                typeNameInput.Value = string.Empty;

                TestTypeGridView.DataSource = aTestManager.GetAllTestTypes();
                TestTypeGridView.DataBind();
            
        }
    }
}