using C183027_Project1.BillAdminLayer;
using C183027_Project1.Model;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C183027_Project1
{
    public partial class testRequestEntry : System.Web.UI.Page
    {
        TestRequestManager aTestRequestManager = new TestRequestManager();
        TestManager aTestManager = new TestManager();
        private List<Test> testList;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                selectTestDropDownList.DataSource = aTestManager.GetAllTest();
                selectTestDropDownList.DataTextField = "TestName";
                selectTestDropDownList.DataValueField = "TestId";
                selectTestDropDownList.DataBind();
                selectTestDropDownList.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select Test Name", "0"));
            }

        }
        

        protected void testTypeDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (selectTestDropDownList.SelectedIndex == 0)
                feeInput.Value = "0";
            else
                feeInput.Value = aTestRequestManager.GetFee(Convert.ToInt32(selectTestDropDownList.SelectedValue));
        }

        public void addButton_Click(object sender, EventArgs e)
        {
            outputLabel.Text = "";
            Test aTest = new Test();
            aTest.TestId = Convert.ToInt32(selectTestDropDownList.SelectedValue);
            aTest.TestName = selectTestDropDownList.SelectedItem.Text;
            aTest.Fee = Convert.ToDouble(feeInput.Value);

            if (Session["TempTest"] == null)
            {
                testList = new List<Test>();
            }
            else
            {
                testList = (List<Test>)Session["TempTest"];
            }
            testList.Add(aTest);
            testRequestGridView.DataSource = testList;
            testRequestGridView.DataBind();
            Session["TempTest"] = testList;

            double sum = 0;
            for (int i = 0; i < testRequestGridView.Rows.Count; i++)
            {
                sum += Double.Parse(testRequestGridView.Rows[i].Cells[2].Text);
            }
            totalInput.Value = sum.ToString();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Patient aPatient = new Patient();
            aPatient.Name = patientNameInput.Value;
            aPatient.DateOfBirth = dateOfbirthInput.Value;
            aPatient.MobileNo = phoneInput.Value;
            aPatient.BillAmount = Convert.ToDouble(totalInput.Value);
            aPatient.PaymentStatus = 0;
            string date = DateTime.Now.ToString("yyyy-MM-dd");

            if (aTestRequestManager.SavePatient(aPatient) != "Please use another Mobile No !")
            {
                foreach (Test anyTest in (List<Test>)Session["TempTest"])
                {
                    TestRequest aTestRequest = new TestRequest();
                    aTestRequest.PatientId = aTestRequestManager.GetPatientId(aPatient.MobileNo);
                    aTestRequest.TestId = anyTest.TestId;
                    aTestRequest.EntryDate = date;

                    outputLabel.Text = aTestRequestManager.SaveTestRequest(aTestRequest);
                }
                // PDF save code Here....

                PDFManager aPdfManager = new PDFManager();
                Document pdfDocument = new Document(PageSize.A4, 50f, 50f, 50f, 50f);
                PdfWriter.GetInstance(pdfDocument, Response.OutputStream);

                pdfDocument.Open();
                pdfDocument.Add(aPdfManager.GetBillPdfParagraph(date, aTestRequestManager.GetPatientId(aPatient.MobileNo), aPatient.Name, aPatient.DateOfBirth, aPatient.MobileNo, testRequestGridView, totalInput.Value));
                pdfDocument.Close();

                patientNameInput.Value = string.Empty;
                dateOfbirthInput.Value = string.Empty;
                phoneInput.Value = string.Empty;
                testRequestGridView.DataSource = null;
                testRequestGridView.DataBind();
                Session["TempTest"] = null;
                totalInput.Value = String.Empty;
                selectTestDropDownList.ClearSelection();

                Response.ContentType = "application/pdf";
                Response.AppendHeader("content-disposition", "attachment;filename=Bill.pdf");
                Response.Write(pdfDocument);
                Response.Flush();
                Response.End();
            }
            else
            {
                outputLabel.Text = "Please use another Mobile No !";
            }
        }
    }
}