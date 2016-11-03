<%--
  Copyright (c) 2007-2010 Denim Group, Ltd.
  All rights reserved
--%>

<%@ Page Language="C#" AutoEventWireup="true" Inherits="ViewStatement" Codebehind="ViewStatement.aspx.cs" %>

<%@ Register Src="Controls/Nav.ascx" TagName="Nav" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>View Online Statement</title>
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
                    <table border="1">
                        <tr>
                            <th valign="top" colspan="2">
                                Account Statement for Customer: 
                                <asp:Label ID="lblTopNumber" runat="server" Text="Label"></asp:Label> on 
                                <asp:Label ID="lblTopDate" runat="server" Text="Label"></asp:Label>.
                            </th>
                        </tr>
                        <tr>
                            <td valign="top">
                                <table border="1" width="250px">
                                    <tr>
                                        <th colspan="2">
                                            Statement of Account
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>
                                            Name:
                                        </td>
                                        <td>
                                            <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Address:
                                        </td>
                                        <td>
                                            <asp:Label ID="lblAddress" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                </table>
                            </td>
                            <td align="top">
                                <table border="1" width="350px">
                                    <tr>
                                        <th colspan="2">
                                            Statement Information
                                        </th>
                                    </tr>
                                    <tr>
                                        <td width="125px">
                                            Billing Date:
                                        </td>
                                        <td>
                                            <asp:Label ID="lblBillingDate" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Customer Number:
                                        </td>
                                        <td>
                                            <asp:Label ID="lblCustomerNumber" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th colspan="2">
                                            Balance Due:
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>
                                            On or before due date:
                                        </td>
                                        <td align="right">
                                            <asp:Label ID="lblByDue" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            After due date:
                                        </td>
                                        <td align="right">
                                            <asp:Label ID="lblAfterDue" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <table border="1" width="100%">
                                    <tr>
                                        <th colspan="2">
                                            Resource Usage
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>
                                            kWh Used:
                                        </td>
                                        <td  align="right">
                                            <asp:Label ID="lblKilowatt" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            ccf Used:
                                        </td>
                                        <td  align="right">
                                            <asp:Label ID="lblCcf" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                </table>
                                
                            </td>
                            <td>
                                <table border="1" width="100%">
                                    <tr>
                                        <th colspan="2">
                                            Recent Activity
                                        </th>
                                    </tr>
                                    <tr>
                                        <td  width="125px">
                                            Previous Bill:
                                        </td>
                                        <td align="right">
                                            <asp:Label ID="lblPrevious" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Payments:
                                        </td>
                                        <td align="right">
                                            <asp:Label ID="lblPayments" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <th colspan="2">
                                            Last Month
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>
                                            Current Electric:
                                        </td>
                                        <td align="right">
                                            <asp:Label ID="lblCurrentElectric" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Current Gas:
                                        </td>
                                        <td align="right">
                                            <asp:Label ID="lblCurrentGas" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            City Services:
                                        </td>
                                        <td align="right">
                                            <asp:Label ID="lblCityServices" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            State and Local Taxes:
                                        </td>
                                        <td align="right">
                                            <asp:Label ID="lblStateLocalTaxes" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Balance:
                                        </td>
                                        <td align="right">
                                            <asp:Label ID="lblBalance2" runat="server" Text="Label"></asp:Label></td>
                                    </tr>
                                </table>
                            
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
        
        
    
    </div>
    </form>
</body>
</html>
