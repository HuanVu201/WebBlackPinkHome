using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlackPinkHome.objects
{
    public class user
    {
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string phone { get; set; }
        public string email { get; set; }
        public string password { get; set; }    

        public user() { }

        public user(string firstName, string lastName, string phone, string email, string password) 
        {
            this.firstName = firstName; 
            this.lastName = lastName;
            this.phone = phone;
            this.email = email;
            this.password = password;
        }
            

    }
}