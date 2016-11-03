<%--
  Copyright (c) 2007-2010 Denim Group, Ltd.
  All rights reserved
--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutRiskEUtility.aspx.cs" Inherits="ZigguratUtilityWeb.AboutRiskEUtility" %>

<%@ Register Src="Controls/PublicHeader.ascx" TagName="PublicHeader" TagPrefix="uc1" %>
<%@ Register Src="Controls/PublicFooter.ascx" TagName="PublicFooter" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Risk-E Utility About Page</title>
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
                                <p>
                                    <a href="http://www.denimgroup.com/"><img src="Images/dg_logo.gif" /></a>
                                </p>
                                <p>
                                    RiskE Utility is an example application created by Denim Group to demonstrate potential problems with web applications.
                                    It contains a number of serious security vulnerabilities and therefore should never be deployed in production and should not be used as an example of secure code.
                                </p>
                                <p>
                                    For information about how to create secure applications as well as how to test applications for security vulnerabilities, a useful resource can be materials from the <a href="http://www.owasp.org/">Open Web Application Security Project (OWASP)</a> and the <a href="http://www.webappsec.org/">Web Application Security Consortium (WASC)</a>:
                                    <ul>
                                        <li><a href="http://www.owasp.org/index.php/Category:OWASP_Testing_Project">OWASP Testing Guide</a></li>
                                        <li><a href="http://www.owasp.org/index.php/OWASP_Code_Review_Guide_Table_of_Contents">OWASP Code Review Guide</a></li>        
                                    </ul>
                                </p>
                                <p>
                                    Tools that can be used to help test the security of applications include:
                                    <ul>
                                        <li><a href="http://www.owasp.org/index.php/Category:OWASP_WebScarab_Project">OWASP WebScarab</a></li>
                                        <li><a href="http://www.microsoft.com/downloads/details.aspx?FamilyId=0178e2ef-9da8-445e-9348-c93f24cc9f9d&displaylang=en">Microsoft CAT.NET</a></li>
                                    </ul>
                                </p>
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