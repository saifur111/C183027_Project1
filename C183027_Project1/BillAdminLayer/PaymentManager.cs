using C183027_Project1.Controller;
using C183027_Project1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C183027_Project1.BillAdminLayer
{
    public class PaymentManager
    {
        private PaymentDatabase aPaymentDatabase = new PaymentDatabase();

        public DueView GetDue(string billNo, string mobileNo)
        {
            return aPaymentDatabase.GetDue(billNo, mobileNo);
        }

        public string MakePayment(int patientId)
        {
            int rowAffacted = aPaymentDatabase.MakePayment(patientId);
            if (rowAffacted > 0)
                return "Payment Successful";
            else
                return "Sorry, payment is not successful !";
        }
    }
}