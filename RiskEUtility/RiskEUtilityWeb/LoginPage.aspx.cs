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

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string sql = @"SELECT * FROM [User] WHERE Username = '" + txtUsername.Text + @"' AND Password = '" + txtPassword.Text + @"'";

        SqlConnection con = DBUtil.GetConnection();

        SqlCommand cmd;
        SqlDataReader reader;

        cmd = new SqlCommand(sql);

        cmd.Connection = con;
        reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            //  Successful login
            Customer myCustomer = Customer.HydrateCustomer(reader);
            Session["Customer"] = myCustomer;

            HttpCookie cookie = new HttpCookie("Customer", myCustomer._ID.ToString());
            Response.AppendCookie(cookie);

            Response.Redirect("Home.aspx");
        }
        else
        {
            lblError.Text = @"Username or password was incorrect.  Please try again.";
            txtPassword.Text = string.Empty;
        }
        DBUtil.CloseConnection(con);
    }
}
