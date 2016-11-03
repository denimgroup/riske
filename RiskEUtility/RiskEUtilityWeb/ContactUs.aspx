<%--
  Copyright (c) 2007-2010 Denim Group, Ltd.
  All rights reserved
--%>

<%@ Page Language="C#" AutoEventWireup="true" Inherits="ContactUs" Codebehind="ContactUs.aspx.cs" %>

<%@ Register Src="Controls/PublicHeader.ascx" TagName="PublicHeader" TagPrefix="uc1" %>
<%@ Register Src="Controls/PublicFooter.ascx" TagName="PublicFooter" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Risk-E Utility Contact Us</title>
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
                <td>
                    <table class="content">
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            Contact:
                                        </td>
                                        <td>
                                            <select name="email">
                                                <option value="support@RiskE.com">Customer Support</option>
                                                <option value="hr@RiskE.com">Human Resources</option>
                                                <option value="general@RiskE.com">General</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Subject:
                                        </td>
                                        <td>
                                            
                                            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Message:
                                        </td>
                                        <td>
                                                                                    
                                            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                        
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Contact Us" /></td>
                                    </tr>
                                </table>
                                <asp:Label ID="lblMessage" runat="server"></asp:Label></td>
                        </tr>
                    </table>
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