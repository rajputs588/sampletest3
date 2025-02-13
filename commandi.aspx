<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="commandi.aspx.cs" Inherits="CxCE_Demo.commandi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        This page is vulnerable to command injection.
        <br /><br />
        <asp:TextBox ID="systemname" runat="server" /> <asp:Button runat="server" ID="submit" OnClick="submit_Click" Text="Submit" />
        <br /><br />
        <asp:Label ID="message" runat="server" />
    </form>
</body>
</html>
