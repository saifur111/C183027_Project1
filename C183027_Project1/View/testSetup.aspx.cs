using C183027_Project1.BillAdminLayer;
using C183027_Project1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C183027_Project1
{
    public partial class testSetup : System.Web.UI.Page
    {
        TestManager aTestManager = new TestManager();
        protected void Page_Load(object sender, EventArgs e)
        {
                if (!IsPostBack)
                {
                    testTypeDropDownList.DataSource = aTestManager.GetAllTestTypes();
                    testTypeDropDownList.DataTextField = "TestTypeName";
                    testTypeDropDownList.DataValueField = "TestTypeId";
                    testTypeDropDownList.DataBind();
                    testTypeDropDownList.Items.Insert(0, new ListItem("Select Test Type", "0"));
                }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
                Test aTest = new Test();
                aTest.TestName = typeNameInput.Value;
                aTest.Fee = Double.Parse(feeInput.Value);
                aTest.TestTypeId = Convert.ToInt32(testTypeDropDownList.SelectedValue);
                outputLabel.Text = aTestManager.SaveTest(aTest);

                typeNameInput.Value = string.Empty;
                feeInput.Value  = string.Empty;

                testSetupGridView.DataSource = aTestManager.GetAllTest();
                testSetupGridView.DataBind();

                testTypeDropDownList.ClearSelection();
        }
    }
}