using C183027_Project1.Controller;
using C183027_Project1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace C183027_Project1.BillAdminLayer
{
    public class TestManager
    {
        TestDatabase aTestDatabase = new TestDatabase();

        public string SaveTestType(TestType aTestType)
        {
            if (aTestDatabase.CheckTestType(aTestType))
                return "Type Name is already saved !";
            else
            {
                int rowAffected = aTestDatabase.SaveTestType(aTestType);
                if (rowAffected > 0)
                    return "Type Saved :)";
                else
                    return "Type Name save failed !";
            }
        }

        public List<TestType> GetAllTestTypes()
        {
            return aTestDatabase.GetAllTestTypes();
        }

        public string SaveTest(Test aTest)
        {
            if (aTestDatabase.CheckTest(aTest))
                return "Test Name is already saved !";
            else
            {
                int rowAffected = aTestDatabase.SaveTest(aTest);
                if (rowAffected > 0)
                    return "Test Saved.)";
                else
                    return "Test Name save failed !";
            }
        }

        public List<Test> GetAllTest()
        {
            return aTestDatabase.GetAllTest();
        }
    }
}