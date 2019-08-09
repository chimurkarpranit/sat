<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trace.aspx.cs" Inherits="Day9_10.Trace" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trace</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center;margin-top:200px">
            <asp:Label ID="fileasinput" runat="server" Text="Enter file name as <b>File.txt</b>"></asp:Label><br />
            <asp:TextBox ID="file4" runat="server"></asp:TextBox><br />
            <asp:Button ID="ErrorButton4" runat="server" Text="ErrorButton" OnClick="ErrorButtonClick4" Height="37px" Width="151px" />
            <br />
            <asp:Label ID="filedata4" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
