using C183027_Project1.BillAdminLayer;
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
    public partial class typeWiseReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void showButton_Click(object sender, EventArgs e)
        {
            ReportManager aReportManager = new ReportManager();
            typeWiseReportGridView.DataSource = aReportManager.GetTypeWiseReportView(fromDateInput.Value, toDateInput.Value);
            typeWiseReportGridView.DataBind();

            double total = 0;
            for (int i = 0; i < typeWiseReportGridView.Rows.Count; i++)
            {
                total += double.Parse(typeWiseReportGridView.Rows[i].Cells[3].Text);
            }
            totalInput.Value = (total).ToString();
           //totalTextBox.ForeColor = Color.Red;
        }

        protected void pdfButton_Click(object sender, EventArgs e)
        {
            PDFManager aPdfManager = new PDFManager();
            Document pdfDocument = new Document(PageSize.A4, 50f, 50f, 50f, 50f);
            PdfWriter.GetInstance(pdfDocument, Response.OutputStream);

            pdfDocument.Open();
            pdfDocument.Add(aPdfManager.GetTypeWiseReportPdfParagraph(fromDateInput.Value, toDateInput.Value, typeWiseReportGridView, totalInput.Value));
            pdfDocument.Close();

            fromDateInput.Value = string.Empty;
            toDateInput.Value = string.Empty;
            typeWiseReportGridView.DataSource = null;
            typeWiseReportGridView.DataBind();
            totalInput.Value = String.Empty;

            Response.ContentType = "application/pdf";
            Response.AppendHeader("content-disposition", "attachment;filename=TypeWiseReport.pdf");
            Response.Write(pdfDocument);
            Response.Flush();
            Response.End();
        }
    }
}