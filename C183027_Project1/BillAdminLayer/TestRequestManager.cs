using C183027_Project1.Controller;
using C183027_Project1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C183027_Project1.BillAdminLayer
{
    public class TestRequestManager
    {
        TestRequestDatabase aTestRequestDatabase = new TestRequestDatabase();

        public string SavePatient(Patient aPatient)
        {
            if (aTestRequestDatabase.CheckPatient(aPatient))
            {
                return "Please use another Mobile Number!";
            }
            else
            {
                int rowAffacted = aTestRequestDatabase.SavePatient(aPatient);
                if (rowAffacted > 0)
                    return "Patient Information Saved.";
                else
                    return "Sorry, Patient Information failed to Saved!";
            }
        }

        public string GetFee(int TestId)
        {
            return aTestRequestDatabase.GetFee(TestId);
        }

        public int GetPatientId(string mobileNo)
        {
            return aTestRequestDatabase.GetPatientId(mobileNo);
        }

        public string SaveTestRequest(TestRequest aTestRequest)
        {
            int rowAffacted = aTestRequestDatabase.SaveTestRequest(aTestRequest);
            if (rowAffacted > 0)
                return "Test Request Saved";
            else
                return "Sorry, Test Request failed to Saved !";
        }
    }
}