using C183027_Project1.Controller;
using C183027_Project1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C183027_Project1.BillAdminLayer
{
    public class ReportManager
    {
        ReportDatabase aReportDatabase = new ReportDatabase();

        public List<TestWiseReportView> GetTestWiseReportView(string fromDate, string toDate)
        {
            return aReportDatabase.GetTestWiseReportView(fromDate, toDate);
        }

        public List<TypeWiseReportView> GetTypeWiseReportView(string fromDate, string toDate)
        {
            return aReportDatabase.GetTypeWiseReportView(fromDate, toDate);
        }

        public List<UnpaidBillReportView> GetUnpaidBillReportView(string fromDate, string toDate)
        {
            return aReportDatabase.GetUnpaidBillReportList(fromDate, toDate);
        }
    }
}