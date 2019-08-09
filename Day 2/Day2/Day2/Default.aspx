﻿<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Day2._Default" %>

<form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging="OnPageIndexChanging" PageSize="5" Height="439px" style="margin-bottom: 61px" Width="986px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
        <Columns>
        <asp:BoundField ItemStyle-Width="150px" DataField="EmployeeID" HeaderText="Employee ID" />
        <asp:BoundField ItemStyle-Width="150px" DataField="LastName" HeaderText="Last Name" />
        <asp:BoundField ItemStyle-Width="150px" DataField="FirstName" HeaderText="First Name" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Title" HeaderText="Title" />
        <asp:BoundField ItemStyle-Width="150px" DataField="TitleOfCourtesy" HeaderText="TitleOfCourtesy" />
        <asp:BoundField ItemStyle-Width="150px" DataField="BirthDate" HeaderText="BirthDate" />
        <asp:BoundField ItemStyle-Width="150px" DataField="HireDate" HeaderText="HireDate" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Address" HeaderText="Address" />
        <asp:BoundField ItemStyle-Width="150px" DataField="City" HeaderText="City" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Region" HeaderText="Region" />
        <asp:BoundField ItemStyle-Width="150px" DataField="PostalCode" HeaderText="PostalCode" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Country" HeaderText="Country" />
        <asp:BoundField ItemStyle-Width="150px" DataField="HomePhone" HeaderText="HomePhone" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Extension" HeaderText="Extension" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Photo" HeaderText="Photo" />
    </Columns>
    </asp:GridView>
</form>