<%--
  Copyright (c) 2007-2010 Denim Group, Ltd.
  All rights reserved
--%>

<%@ Page Language="C#" AutoEventWireup="true" Inherits="MakePayment" Codebehind="MakePayment.aspx.cs" %>

<%@ Register Src="Controls/Nav.ascx" TagName="Nav" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Make a Payment</title>
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
                <td class="content" valign="top">
                    <p>
                        
                        Your current balance is 
                        <asp:Label ID="lblBalance" runat="server" Text="Label"></asp:Label>.
                    </p>
                    <table border="1">
                        <tr>
                            <th colspan="2">
                                Make a Payment Online
                            </th>
                        </tr>
                        <tr>
                            <td>
                                Name on Credit Card:
                            </td>
                            <td>
                                <asp:TextBox ID="txtNameOnCard" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                Credit Card Number:
                            </td>
                            <td>
                                <asp:TextBox ID="txtCardNumber" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Credit Card Expiration (MM/YYYY):
                            </td>
                            <td>
                                <asp:TextBox ID="txtExpDate" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Amount:
                            </td>
                            <td>
                                <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="btnMakePayment" runat="server" Text="Make a Payment" OnClick="btnMakePayment_Click" /></td>
                        </tr>
                    </table>
                    <br />
                    <asp:Label ID="lblStatus" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    


    </div>
    </form>
</body>
</html>
