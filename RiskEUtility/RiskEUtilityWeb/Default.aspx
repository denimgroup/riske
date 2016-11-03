<%--
  Copyright (c) 2007-2010 Denim Group, Ltd.
  All rights reserved
--%>

<%@ Page Language="C#" AutoEventWireup="true" Inherits="_Default" Codebehind="Default.aspx.cs" %>

<%@ Register Src="Controls/PublicHeader.ascx" TagName="PublicHeader" TagPrefix="uc1" %>
<%@ Register Src="Controls/PublicFooter.ascx" TagName="PublicFooter" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Risk-E Utility Home</title>
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
                                    <td width="300px" height="201px"><img src="Images/300px-Lightning_NOAA.jpg" alt="Lightning" /></td>
                                    <td>
                                        Here at Risk-E Utility we are committed to providing you with the highest quality utility
                                        services and we promist to keep your data as secure as possible.  Trust us.
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Our online services are as reliable as the utility services we provide.  Log in today and experience
                                        a whole new world of convenience.
                                    </td>
                                    <td width="288px" height="218px"><img src="Images/Nuclear_Power_Plant_2.jpg" alt="Nuclear power plant with sunflowers in the foreground" /></td>
                                </tr>
                            </table>
                            </td>
                            <td valign="top" width="150px">
                                <b>Recent News Items:</b>
                                <ul>
                                    <li><a href="#">Wind Energy is On the Move</a></li>
                                    <li><a href="#">Winter Rates Expected to Fall</a></li>
                                    <li><a href="#">New Privacy Policy Released</a></li>
                                    <li><a href="#">Energy Saving Tips</a></li>
                                    <li><a href="#">Online Payments: Are They For Me?</a></li>
                                </ul>
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
