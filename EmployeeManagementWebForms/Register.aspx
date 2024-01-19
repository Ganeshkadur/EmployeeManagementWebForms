<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EmployeeManagementWebForms.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style7 {
            width: 148px;
        }
        .auto-style8 {
            width: 345px;
        }
        .auto-style9 {
            height: 30px;
            width: 345px;
        }
        .auto-style10 {
            font-weight: bold;
            margin-bottom: 1px;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            text-decoration: underline;
        }
        .auto-style13 {
            font-weight: bold;
        }
        .auto-style14 {
            font-size: large;
        }
    </style>
</head>
<body style="width: 644px  margin:300px">
   
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="">
            <tr>
                <td colspan="2" class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style12"><strong> <span class="auto-style14">User Registartion&nbsp;</span>&nbsp;&nbsp; </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<strong><asp:Button ID="Button2" runat="server" BackColor="#0033CC" CssClass="auto-style10" ForeColor="White" Height="27px" OnClick="Button2_Click" Text="Login" Width="68px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="Employee ID&nbsp;&nbsp;&nbsp;&nbsp;:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" Style="top: 43px;
            left: 590px; position: absolute; height: 22px; width: 221px;color:red"
    OnServerValidate="UserCustomValidate"
    ControlToValidate="TextBox1"
    ClientValidationFunction="validateUserId"
    ErrorMessage="ID should be greater than 0..!"></asp:CustomValidator>

<script type="text/javascript">
    function validateUserId(sender, args) {
        var userId = document.getElementById('<%= TextBox1.ClientID %>').value;

        if (parseInt(userId) > 0) {
            args.IsValid = true;
        } else {
            args.IsValid = false;
        }
    }
</script>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Style="top: 42px;
left: 380px; position: absolute; height: 22px; width: 128px;color:red" ErrorMessage="RequiredFieldValidator"
ControlToValidate="TextBox1">Id Is Mandarory..!</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="Employee Name&nbsp; :"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Style="top: 67px;
             left: 380px; position: absolute; height: 22px; width: 151px;color:red" ErrorMessage="RequiredFieldValidator"
ControlToValidate="TextBox2">Name is Mandarory..!</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label3" runat="server" Text="Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Style="top: 118px;
             left: 380px; position: absolute; height: 22px; width: 151px;color:red" ErrorMessage="RequiredFieldValidator"
ControlToValidate="TextBox4">Email is Mandarory..!</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Style="top: 217px;
left: 380x; position: absolute; height: 22px; width: 166px;color:red"
ErrorMessage="Email Not in format..!" ControlToValidate="TextBox4"
ValidationExpression="^[0-9a-zA-Z]+([-_+.]?[0-9a-zA-Z]+)*@[0-9a-zA-Z]+\.[a-zA-Z]{2,4}([-][a-zA-Z]{2,3})?$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Branch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            
    
    <td class="auto-style9">
        <asp:DropDownList ID="DropDownList1" runat="server" Height="41px" Width="186px">
            <asp:ListItem>CS</asp:ListItem>
            <asp:ListItem>IS</asp:ListItem>
            <asp:ListItem>Mech</asp:ListItem>
            <asp:ListItem>CIV</asp:ListItem>
        </asp:DropDownList>
    </td>

            </tr>
            <tr>
                <td class="auto-style7">Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Upload Image&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </td>
                <td class="auto-style9">
     <asp:FileUpload ID="FileUpload1" runat="server" />
 </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">

                    <strong>

                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" BackColor="#33CC33" ForeColor="White" Height="38px" Text="Register" Width="92px" CssClass="auto-style13" />
                    </strong>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

