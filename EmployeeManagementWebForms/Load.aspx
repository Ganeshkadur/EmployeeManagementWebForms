<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Load.aspx.cs" Inherits="EmployeeManagementWebForms.Load" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="myform" runat="server">
       
 
        <div class="auto-style1">
       
 
    <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="White" ForeColor="Black" Width="1412px" AutoGenerateColumns="False" Height="361px" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
        <HeaderStyle BackColor="#33CC33" />
        <Columns>
            <asp:BoundField DataField="StudentId" HeaderText="Student ID" SortExpression="StudentId" Visible="true" />
            <asp:BoundField DataField="Name" HeaderText="Student Name" SortExpression="StudentName" Visible="true" />
            <asp:BoundField DataField="Adress" HeaderText="Student Address" SortExpression="Student_Address" Visible="true" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" Visible="true" />
            <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" Visible="true" />
            <asp:BoundField DataField="Date" HeaderText="Registration Date" SortExpression="Reg_Date" Visible="true" />

            <asp:TemplateField HeaderText="Student Image" Visible="true">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Width="150" Height="100" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
        </div>




    </form>
</body>
</html>
 