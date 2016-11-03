//////////////////////////////////////////////////////////////////////
//  Copyright (c) 2007-2010 Denim Group, Ltd.
//  All rights reserved
//////////////////////////////////////////////////////////////////////

using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;

namespace ZigguratUtilityWeb.Services
{
    /// <summary>
    /// Summary description for UserService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class UserService : System.Web.Services.WebService
    {
        public UserService()
        {

            //Uncomment the following line if using designed components 
            //InitializeComponent(); 
        }

        [WebMethod]
        public DataTable GetUserNameFromLastName(string lastName)
        {
            DataTable retVal = null;

            string sql = @"SELECT Username, FirstName, LastName FROM [User] WHERE LastName = '" + lastName + "'";

            SqlConnection con = DBUtil.GetConnection();

            SqlCommand cmd;
            SqlDataReader reader;

            cmd = new SqlCommand(sql);

            cmd.Connection = con;
            reader = cmd.ExecuteReader();

            retVal = DBUtil.GetTable(reader);
            retVal.Namespace = "http://testnamespace/";

            DBUtil.CloseConnection(con);

            return (retVal);
        }

        [WebMethod]
        public Customer GetUserInfo(int userId)
        {
            Customer retVal;

            string sql = @"SELECT * FROM [User] WHERE UserID = " + userId;

            SqlConnection con = DBUtil.GetConnection();

            SqlCommand cmd;
            SqlDataReader reader;

            cmd = new SqlCommand(sql);

            cmd.Connection = con;
            reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                //  Found the user
                retVal = Customer.HydrateCustomer(reader);
            }
            else
            {
                retVal = null;
            }
            DBUtil.CloseConnection(con);

            return (retVal);
        }
    }
}
