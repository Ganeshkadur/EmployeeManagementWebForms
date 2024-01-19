<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeeManagementWebForms.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        table{
            margin:auto;
            width:100px;

            border:5px black ridge;
        }
        .auto-style5 {
            width: 780px;
            height: 47px;
        }
        .auto-style10 {
            height: 50px;
        }
        .auto-style12 {
            margin-left: 4px;
        }
        .auto-style14 {
            width: 410px;
        }
        .auto-style15 {
            width: 1763px;
            height: 47px;
            text-align: center;
        }
        .auto-style18 {
            width: 1763px;
            height: 56px;
            text-align: center;
        }
        .auto-style19 {
            width: 780px;
            height: 56px;
        }
        .auto-style20 {
            width: 1763px;
        }
        .auto-style21 {
            width: 780px;
        }
        .auto-style22 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style14">
                <tr>
                    <td class="auto-style15">USERID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style12" Height="37px" Width="204px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">PASSWORD :</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style12" Height="39px" Width="207px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20"></td>
                    <td class="auto-style21"></td>
               <%-- </tr>
                <tr>
       <td class="auto-style24">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REMIND ME :&nbsp;</td>
     <td class="auto-style23">
         <asp:CheckBox ID="CheckBox1" runat="server" /> 

     </td>

 </tr>--%>

                <tr>
                    <td class="auto-style10" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" BackColor="#3333CC" BorderColor="Black" CssClass="auto-style22" ForeColor="White" Height="42px" OnClick="Button2_Click" Text="Signup" Width="97px" />
                        </strong>&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#009900" BorderStyle="Solid" Font-Bold="True" ForeColor="White" Height="41px" OnClick="Button1_Click" Text="LOG IN.." Width="97px" BorderColor="Black" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
