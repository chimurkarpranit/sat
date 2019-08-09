<%--Day 8 : Exercise_7 Repeater and DataList Control
Created By: Pranit Chimurkar
Date: 2019/08/02--%>
<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Exercise_7_Repeater_and_DataList_._Default" %>

<!DOCTYPE html>
<html>
        <head>
            <title>Repeater and DataList</title>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        </head>
    <body>
    <form id="form1" runat="server">
    <div class="container-fluid form-group d-flex justify-content-center align-items-center">
    <table class="table"><tr><td colspan="2"><h1 class="display-4 justify-content-center">Repeater and DataList Control</h1><br /></td></tr>

    <%--DropDownList--%>
    <tr>
        <td><asp:DropDownList ID="DdListSort" runat="server"  CssClass="form-control" style="margin-right: 50px;">
                <asp:ListItem Value="0">Please Select</asp:ListItem>
                <asp:ListItem Value="FirstName">FirstName </asp:ListItem>
                <asp:ListItem Value="LastName">LastName </asp:ListItem>
                <asp:ListItem Value="Salary">Salary</asp:ListItem>
                <asp:ListItem Value="BirthDate">BirthDate</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
        <%--Button for diplaying records--%>
        <asp:Button ID="BtnDisplay" runat="server" class="btn btn-primary" OnClick="BtnRecords_Click" Text="Display Records" />
        </td></tr>
        <tr><td>
    <%--Repeater--%>
    <asp:Repeater ID="Repeater1" runat="server">
    <HeaderTemplate>        
            <tr>
                <th>FirstName</th>
                <th>LastName</th>
                <th>BirthDate</th>
                <th>Salary</th>                
            </tr>
    </HeaderTemplate>
      <ItemTemplate>
        <tr>
            <td><asp:Label ID="lblName" runat="server" Text='<%# Eval("FirstName") %>' /></td>
            <td><asp:Label ID="lblAddress" runat="server" Text='<%# Eval("LastName") %>' /></td>
            <td><asp:Label ID="lblBirthday" runat="server" Text='<%# Eval("BirthDate") %>' /></td>
            <td><asp:Label ID="lblSalary" runat="server" Text='<%# Eval("Salary") %>' /></td>
        </tr>
    </ItemTemplate>
    </asp:Repeater></td>

    <td>
    <%--DataList--%>
    <asp:DataList ID="DataList1" runat="server" Height="110px" Width="301px">
        <HeaderTemplate>
        <table cellspacing="0" cellpadding="0" rules="all" border="1" style="width:300px">
            <tr>
                <th>FirstName</th>
                <th>LastName</th>
                <th>BirthDate</th>
                <th>Salary</th>
            </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td><asp:Label ID="lblName" runat="server" Text='<%# Eval("FirstName") %>' /></td>
            <td><asp:Label ID="lblAddress" runat="server" Text='<%# Eval("LastName") %>' /></td>
            <td><asp:Label ID="lblBirthday" runat="server" Text='<%# Eval("BirthDate") %>' /></td>
            <td><asp:Label ID="lblSalary" runat="server" Text='<%# Eval("Salary") %>' /></td>
        </tr>
    </ItemTemplate>
    </asp:DataList></td></tr></table>
        <%--Paging for repeater and datalist--%>
        <table><tr><td>
        <asp:LinkButton runat="server" ID="BtnOne" Text="1" onclick="Link1_Click" style="margin-right: 50px;"></asp:LinkButton></td>
        <td><asp:LinkButton runat="server" ID="BtnTwo" Text="2" onclick="Link2_Click"></asp:LinkButton></td></tr></table>
</div>
</form>
</body>
</html>