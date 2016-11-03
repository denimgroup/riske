<%--
  Copyright (c) 2007-2010 Denim Group, Ltd.
  All rights reserved
--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HiddenLaunchPage.aspx.cs" Inherits="ZigguratUtilityWeb.AHiddenDirectory.HiddenLaunchPage" %>

<%@ Register Src="~/Controls/PublicHeader.ascx" TagName="PublicHeader" TagPrefix="uc1" %>
<%@ Register Src="~/Controls/PublicFooter.ascx" TagName="PublicFooter" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Landing Page</title>
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
                                This is a hidden landing page.  Your crawl won't find this.
                            </td>
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
</html>
