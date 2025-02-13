<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sqli.aspx.cs" Inherits="CxCE_Demo.sqli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        This page is vulnerable to SQL Injection and second order SQL Injection. 
        <br /><br />
        <asp:TextBox ID="name" runat="server" /> <asp:Button runat="server" ID="submit" OnClick="submit_Click" Text="Submit" />
        <br /><br />
        <asp:Label ID="message" runat="server" />
    </form>
</body>
</html>
