<%--
  Copyright (c) 2007-2010 Denim Group, Ltd.
  All rights reserved
--%>

<%@ Page Language="C#" AutoEventWireup="true" Inherits="LoginPage" Codebehind="LoginPage.aspx.cs" %>

<%@ Register Src="Controls/PublicHeader.ascx" TagName="PublicHeader" TagPrefix="uc1" %>
<%@ Register Src="Controls/PublicFooter.ascx" TagName="PublicFooter" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Login</title>
    <link href="Styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="main_layout">
            <tr>
                <td>
                    <uc1:PublicHeader ID="PublicHeader1" runat="server" />
                
                </td>
            </tr>
            <tr>
                <td class="content" valign="top">
                    <table>
                        <tr>
                            <td>User Name:</td>
                            <td><asp:TextBox ID="txtUsername" Width="200" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td>
                                <asp:TextBox ID="txtPassword" TextMode="Password" Width="200" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" /></td>
                        </tr>
                    </table>
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <uc2:PublicFooter ID="PublicFooter1" runat="server" />
                
                </td>
            </tr>
        </table>
        
        

    </div>
    </form>
</body>
</html>
