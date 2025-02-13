<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xss.aspx.cs" Inherits="CxCE_Demo.xss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        This page is vulnerable to XSS via query parameter.  The form below uses a custom (arbitrarily silly) validation routine that will only output the user's 
        text if the user types "safe".  If the user types anything else, an error message is output.  It is also vulnerable to stored XSS and has a hard-coded password.
        <br /><br />
        <asp:TextBox ID="name" runat="server" /> <asp:Button runat="server" ID="submit" OnClick="submit_Click" Text="Submit" />
        <br /><br />
        <asp:Label ID="message" runat="server" /> <br />
        <asp:Label ID="message2" runat="server" />
    </form>
</body>
</html>
