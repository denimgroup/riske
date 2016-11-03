//////////////////////////////////////////////////////////////////////
//  Copyright (c) 2007-2010 Denim Group, Ltd.
//  All rights reserved
//////////////////////////////////////////////////////////////////////

using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Customer myCustomer = (Customer)Session["Customer"];
        lblName.Text = myCustomer._FirstName + " " + myCustomer._LastName;
        lblBalance.Text = String.Format("{0:c}", myCustomer._Balance);

        string sql = "SELECT * FROM Statement WHERE UserID = " + myCustomer._ID;
        SqlConnection con = DBUtil.GetConnection();
        SqlDataReader reader = DBUtil.ExecuteDataReader(con, sql);
        Repeater1.DataSource = reader;
        Repeater1.DataBind();
    }
}
