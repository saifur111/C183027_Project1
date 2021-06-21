using C183027_Project1.BillAdminLayer;
using C183027_Project1.Model;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C183027_Project1
{
    public partial class payment : System.Web.UI.Page
    {
        PaymentManager aPaymentManager = new PaymentManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            outputLabel.Text = "";
            amountInput.Value = "";
            dueDateInput.Value = "";
        }
       
      

        protected void searchButton_Click(object sender, EventArgs e)
        {
            if (billNoInput.Value != "" || mobileNoInput.Value != "")
            {
                DueView aDueView = new DueView();
                aDueView = aPaymentManager.GetDue(billNoInput.Value, mobileNoInput.Value);
                if (aDueView != null)
                {
                    Session["patientId"] = aDueView.PatientId;
                    amountInput.Value = aDueView.Amount;
                    dueDateInput.Value = aDueView.DueDate;
                }
                else
                {
                    outputLabel.ForeColor = Color.Red;
                    outputLabel.Text = "No Unpaid bill information found For this Bill No/Mobile No !";
                }
            }
            else
            {
                amountInput.Value = "";
                dueDateInput.Value = "";
                outputLabel.ForeColor = Color.Brown;
                outputLabel.Text = "Please insert Bill No or Mobile No";
            }
        }

        protected void payButton_Click(object sender, EventArgs e)
        {
            outputLabel.Text = aPaymentManager.MakePayment(Convert.ToInt32(Session["patientId"]));
            Session["patientId"] = null;
        }
    }
}