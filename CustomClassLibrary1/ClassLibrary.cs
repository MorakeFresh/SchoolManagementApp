using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading;
using System.Security.Cryptography;
using System.Text;

namespace FinalPoeApp
{
    public class ClassLibrary
    {
        public static void timeConsuming()
        {
            Thread.Sleep(5000);
        }

        public static string Hashing(string s)
        {
            //Create a hash
            var hash = SHA256.Create();
            byte[] bytes = hash.ComputeHash(Encoding.UTF8.GetBytes(s));

            var stringBuilder = new StringBuilder();

            //Appending the hash code
            for (int i = 0; i < bytes.Length; i++)
            {
                stringBuilder.Append(bytes[i].ToString("x2"));
            }
            return stringBuilder.ToString();
        }

        //Declaring semester weeks variable
        public static int semesterWeeks { get; set; }
        //declaring semester start variable
        public static DateTime semesterStart { get; set; }
        //declaring semester end variable
        public static DateTime semesterEnd { get; set; }
        //declaring module code variable
        public string moduleCode { get; set; }
        //declaring module name variable
        public string moduleName { get; set; }
        //declaring module credits variable
        public int moduleCredits { get; set; }
        //declaring class hours variable
        public int classHours { get; set; }
        //declaring study hours variable
        public double studyHours { get; set; }
    }
}