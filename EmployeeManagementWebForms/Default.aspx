<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeManagementWebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <table class="w-100">
        <tr>
            <td colspan="2" style="height: 24px; font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #000000; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: underline;"><strong>Employee Management&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button8" runat="server" BackColor="#0033CC" BorderColor="#0033CC" ForeColor="White" Height="36px" OnClick="Button8_Click" style="font-size: small; font-weight: bold; background-color: #000099" Text="LOG OUT.." Width="96px" />
                </strong></td>
        </tr>
        <tr>
            <td>
                <strong>
                <asp:Label ID="Label1" runat="server" Text="Student Id"></asp:Label>
                </strong>
            </td>
            <td>
           
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="185px" Height="30px"  ></asp:TextBox>

                        
<%--<asp:CustomValidator ID="CustomValidator2" runat="server" Style="top: 78px;
            left: 511px; position: absolute; height: 22px; width: 221px;color:red"
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

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Style="top: 116px;
            left: 810px; position: absolute; height: 22px; width: 128px;color:red" ErrorMessage="RequiredFieldValidator"
            ControlToValidate="TextBox1">Id Is Mandarory..!</asp:RequiredFieldValidator>

    --%>



                <%--<asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>--%>
                <strong>&nbsp;<asp:Button ID="Button4" runat="server" BackColor="Aqua" ForeColor="Black" OnClick="Button4_Click" style="font-weight: bold" Text="Search" CssClass="offset-sm-0" Width="84px" Height="36px" />
                &nbsp;
                </strong>
            </td>
        </tr>
        <tr>
            <td style="height: 30px">
                <strong>
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </strong>
            </td>
            <td style="height: 30px">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium"  ></asp:TextBox>
                 <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Style="top: 151px;
                left: 810px; position: absolute; height: 22px; width: 151px;color:red" ErrorMessage="RequiredFieldValidator"
   ControlToValidate="TextBox2">Name is Mandarory..!</asp:RequiredFieldValidator>--%>


              <%-- <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>--%>&nbsp;<strong><asp:Button ID="Button6" runat="server" BackColor="Aqua" ForeColor="Black" OnClick="Button6_Click" style="font-weight: bold" Text="Search" Height="32px" Width="85px" />
                </strong>
            </td>
        </tr>
        <tr>
            <td style="height: 24px">
                <strong>
                <asp:Label ID="Label3" runat="server" Text="Adress"></asp:Label>
                </strong>
            </td>
            <td style="height: 24px">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium"  ></asp:TextBox>
                <%--<asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>--%>
            </td>
        </tr>
        <tr>
            <td>
                <strong>
                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>

                </strong>

            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium"  ></asp:TextBox>
                 <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Style="top: 217px;
             left: 810px; position: absolute; height: 22px; width: 151px;color:red" ErrorMessage="RequiredFieldValidator"
ControlToValidate="TextBox4">Email is Mandarory..!</asp:RequiredFieldValidator>--%>


                
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Style="top: 217px;
        left: 810x; position: absolute; height: 22px; width: 166px;color:red"
        ErrorMessage="Email Not in format..!" ControlToValidate="TextBox4"
        ValidationExpression="^[0-9a-zA-Z]+([-_+.]?[0-9a-zA-Z]+)*@[0-9a-zA-Z]+\.[a-zA-Z]{2,4}([-][a-zA-Z]{2,3})?$"></asp:RegularExpressionValidator>--%>

               <%-- <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>--%>
            </td>
        </tr>
        <tr>
            <td style="height: 30px"><strong>Branch</strong></td>
            <td style="height: 30px">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="41px" Width="186px">
                    <asp:ListItem>CS</asp:ListItem>
                    <asp:ListItem>IS</asp:ListItem>
                    <asp:ListItem>Mech</asp:ListItem>
                    <asp:ListItem>CIV</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 30px"><strong>Date</strong></td>
            <td style="height: 30px">
                <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium"  ></asp:TextBox>
                <%--<asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>--%>
            </td>
        </tr>
        <tr>
            <td style="height: 30px"><strong>
                <asp:Label ID="Label5" runat="server" Text="UploadImage"></asp:Label>
                </strong></td>
            <td style="height: 30px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
              <%--  <asp:Button ID="Button1" runat="server" BackColor="#009933" ForeColor="White" OnClick="Button1_Click" style="font-weight: bold" Text="Register" />--%>
                &nbsp;<asp:Button ID="Button2" runat="server" BackColor="#0033CC" ForeColor="White" OnClick="Button2_Click" style="font-weight: bold" Text="Update" />
                &nbsp;<asp:Button ID="Button3" runat="server" BackColor="Red" ForeColor="White" OnClick="Button3_Click" style="font-weight: bold" Text="Delete" OnClientClick="return confirm('are sure want to deleted...?');" />
                &nbsp;<asp:Button ID="Button5" runat="server" BackColor="#FF0066" ForeColor="White" OnClick="Button5_Click" style="font-weight: bold" Text="Load" />
                </strong></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 24px"></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 24px">
    <br />
                <div class="text-center">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" ForeColor="Black" Width="1346px" AutoGenerateColumns="False" style="margin-right: 0px" Height="238px">
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
</td>

        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>


