//////////////////////////////////////////////////////////////////////
//  Copyright (c) 2007-2010 Denim Group, Ltd.
//  All rights reserved
//////////////////////////////////////////////////////////////////////

using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for User
/// </summary>
public class Customer
{
    public int _ID;
    public string _Username;
    public string _Password;
    public string _FirstName;
    public string _LastName;
    public string _Address1;
    public string _Address2;
    public string _City;
    public string _State;
    public string _Zip;
    public decimal _Balance;
    public string _CreditCard;
    public string _ExpDate;

	private Customer()
	{

	}

    public static Customer HydrateCustomer(SqlDataReader reader)
    {
        Customer retVal = new Customer();

        retVal._ID = (int)reader["UserID"];
        retVal._Username = (string)reader["Username"];
        retVal._Password = (string)reader["Password"];
        retVal._FirstName = (string)reader["FirstName"];
        retVal._LastName = (string)reader["LastName"];
        retVal._Address1 = (string)reader["Address1"];
        retVal._Address2 = (string)reader["Address2"];
        retVal._City = (string)reader["City"];
        retVal._State = (string)reader["State"];
        retVal._Zip = (string)reader["Zip"];
        retVal._Balance = (decimal)reader["Balance"];
        retVal._CreditCard = (string)reader["CreditCard"];
        retVal._ExpDate = (string)reader["ExpDate"];

        return (retVal);
    }
}
