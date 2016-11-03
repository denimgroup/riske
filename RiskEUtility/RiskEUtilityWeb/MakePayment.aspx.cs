//////////////////////////////////////////////////////////////////////
//  Copyright (c) 2007-2010 Denim Group, Ltd.
//  All rights reserved
//////////////////////////////////////////////////////////////////////

using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class MakePayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Customer myCustomer = (Customer)Session["Customer"];

        if (!IsPostBack)
        {
            lblBalance.Text = String.Format("{0:c}", myCustomer._Balance);
            txtNameOnCard.Text = myCustomer._FirstName + " " + myCustomer._LastName;
            txtCardNumber.Text = myCustomer._CreditCard;
            txtExpDate.Text = myCustomer._ExpDate;
        }
    }

    protected void btnMakePayment_Click(object sender, EventArgs e)
    {
        Customer myCustomer = (Customer)Session["Customer"];

        decimal paymentAmount = Convert.ToDecimal(txtAmount.Text);

        //  Update in-memory object as well as DB.
        myCustomer._Balance -= paymentAmount;
        string sql = "UPDATE [User] SET Balance = " + myCustomer._Balance + " WHERE UserID = " + myCustomer._ID;
        DBUtil.ExecuteUpdate(sql);

        string msg = String.Format(@"A charge of {0:c} was applied to credit card account {1}.  Your new balance is {2:c}.", paymentAmount, txtCardNumber.Text, myCustomer._Balance);
        lblStatus.Text = msg;
        lblBalance.Text = String.Format("{0:c}", myCustomer._Balance);
        txtAmount.Text = string.Empty;
    }
}
