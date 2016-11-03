<%--
  Copyright (c) 2007-2010 Denim Group, Ltd.
  All rights reserved
--%>

<%@ Page Language="C#" AutoEventWireup="true" Inherits="Home" Codebehind="Home.aspx.cs" %>

<%@ Register Src="Controls/Nav.ascx" TagName="Nav" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Logged In Home Page</title>
    <link href="Styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="main_layout">
            <tr>
                <td>
                    <uc1:Nav ID="Nav1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="content" valign="top"
                    <p>
                        Welcome, 
                        <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>.  You account balance is 
                        <asp:Label ID="lblBalance" runat="server" Text="Label"></asp:Label>.
                    </p>
                    <p>
                    Recent Statements:<br />
                    <table border="1">
                        <tr>
                            <th width="150px">Billing Date</th>
                            <th width="120px">View</th>
                        </tr>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td align="center">
                                        <%# DataBinder.Eval(Container.DataItem, "BillingDate", "{0:MMM dd, yyyy}")%>
                                    </td>
                                    <td>
                                        <a href='ViewStatement.aspx?StatementID=<%# DataBinder.Eval(Container.DataItem, "StatementID")  %>'>View</a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                    </p>
                    <p>
                        <a href="MakePayment.aspx">Make a Payment Online</a>
                    </p>
                </td>
            </tr>
        </table>
    </div>

    </form>
</body>
</html>
