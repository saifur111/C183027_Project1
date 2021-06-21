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
    public partial class testWiseReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void showButton_Click(object sender, EventArgs e)
        {
            ReportManager aReportManager = new ReportManager();
            testWiseReportGridView.DataSource = aReportManager.GetTestWiseReportView(fromDateInput.Value, toDateInput.Value);
            testWiseReportGridView.DataBind();

            double total = 0;
            for (int i = 0; i < testWiseReportGridView.Rows.Count; i++)
            {
                total += Double.Parse(testWiseReportGridView.Rows[i].Cells[3].Text);
            }
            totalInput.Value = (total).ToString();
        }

        protected void pdfButton_Click(object sender, EventArgs e)
        {
            PDFManager aPdfManager = new PDFManager();
            Document pdfDocument = new Document(PageSize.A4, 50f, 50f, 50f, 50f);
            PdfWriter.GetInstance(pdfDocument, Response.OutputStream);

            pdfDocument.Open();
            pdfDocument.Add(aPdfManager.GetTestWiseReportPdfParagraph(fromDateInput.Value, toDateInput.Value, testWiseReportGridView, totalInput.Value));
            pdfDocument.Close();

            fromDateInput.Value= string.Empty;
            toDateInput.Value = string.Empty;
            testWiseReportGridView.DataSource = null;
            testWiseReportGridView.DataBind();
            totalInput.Value = String.Empty;

            Response.ContentType = "application/pdf";
            Response.AppendHeader("content-disposition", "attachment;filename=TestWiseReport.pdf");
            Response.Write(pdfDocument);
            Response.Flush();
            Response.End();
        }
    }
}