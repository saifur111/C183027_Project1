using C183027_Project1.BillAdminLayer;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C183027_Project1
{
    public partial class unPaidBill : System.Web.UI.Page
    {
        ReportManager aReportManager = new ReportManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void showButton_Click(object sender, EventArgs e)
        {
            unpaidBillReportGridView.DataSource = aReportManager.GetUnpaidBillReportView(fromDateInput.Value, toDateInput.Value);
            unpaidBillReportGridView.DataBind();

            double sum = 0;
            for (int i = 0; i < unpaidBillReportGridView.Rows.Count; i++)
            {
                sum += Double.Parse(unpaidBillReportGridView.Rows[i].Cells[4].Text);
            }
            totalInput.Value = sum.ToString();
        }

        protected void pdfButton_Click(object sender, EventArgs e)
        {
            PDFManager aPdfManager = new PDFManager();
            Document pdfDocument = new Document(PageSize.A4, 50f, 50f, 50f, 50f);
            PdfWriter.GetInstance(pdfDocument, Response.OutputStream);

            pdfDocument.Open();
            pdfDocument.Add(aPdfManager.GetUnpaidBillReportPdfParagraph(fromDateInput.Value, toDateInput.Value, unpaidBillReportGridView, totalInput.Value));
            pdfDocument.Close();

            fromDateInput.Value = string.Empty;
            toDateInput.Value = string.Empty;
            unpaidBillReportGridView.DataSource = null;
            unpaidBillReportGridView.DataBind();
            totalInput.Value = String.Empty;

            Response.ContentType = "application/pdf";
            Response.AppendHeader("content-disposition", "attachment;filename=UnpaidBillReport.pdf");
            Response.Write(pdfDocument);
            Response.Flush();
            Response.End();
        }
    }
}