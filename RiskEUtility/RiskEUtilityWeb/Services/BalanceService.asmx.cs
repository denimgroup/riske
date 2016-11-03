//////////////////////////////////////////////////////////////////////
//  Copyright (c) 2007-2010 Denim Group, Ltd.
//  All rights reserved
//////////////////////////////////////////////////////////////////////

using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;

namespace ZigguratUtilityWeb.Services
{
    /// <summary>
    /// Summary description for BalanceService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class BalanceService : System.Web.Services.WebService
    {

        public BalanceService()
        {

            //Uncomment the following line if using designed components 
            //InitializeComponent(); 
        }

        [WebMethod]
        public decimal GetBalance(int userId)
        {
            decimal retVal = 0.0M;

            return (retVal);
        }

        [WebMethod]
        public bool MakePayment(int userId, decimal amount, string description)
        {
            bool retVal = false;

            StringBuilder sb = new StringBuilder();

            sb.Append("<Payments>\n");
            sb.Append("<Payment>\n");
            sb.Append("\t<UserID>");
            sb.Append(userId);
            sb.Append("</UserID>\n");
            sb.Append("\t<Amount>");
            sb.Append(amount);
            sb.Append("</Amount>\n");
            sb.Append("\t<Description>");
            sb.Append(description);
            sb.Append("</Description>\n");
            sb.Append("</Payment>\n");
            sb.Append("</Payments>");

            Guid myGuid = Guid.NewGuid();

            TextWriter tw = new StreamWriter(".\\" + myGuid.ToString() + ".xml");
            tw.Write(sb.ToString());
            tw.Flush();
            tw.Close();

            retVal = true;

            return (retVal);
        }
    }
}
