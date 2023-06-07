<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="UserRegistration_Form.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
            <table align="center" class="style1" style="border: thin solid #008080">
                <tr>
                    <td colspan="3"
                        style="border-bottom: thin solid #008080; font-weight: 700; text-align: center;">User Registration Form</td>
                </tr>
                <tr>
                    <td class="style5">&nbsp;</td>
                    <td class="style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="style6">FirstName :
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="txtfname" runat="server" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="txtfname" ErrorMessage="!!" ForeColor="Red"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style6">LastName :
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="txtlname" runat="server" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="txtlname" ErrorMessage="!!" ForeColor="Red"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style6">City :
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="txtcity" runat="server" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ControlToValidate="txtcity" ErrorMessage="!!" ForeColor="Red"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style6">Email :
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="txtemail" runat="server" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                            ControlToValidate="txtemail" ErrorMessage="!!" ForeColor="Red"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="txtemail" ErrorMessage="invalid email" ForeColor="Red"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style6">Password&nbsp; :</td>
                    <td class="style4">
                        <asp:TextBox ID="txtpassword" runat="server" Width="120px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ControlToValidate="txtpassword" ErrorMessage="!!" ForeColor="Red"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">&nbsp;</td>
                    <td class="style4">
                        <asp:Button ID="btnregistration" runat="server" Text="Register"
                            OnClick="btnregistration_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="style5">&nbsp;</td>
                    <td class="style2" colspan="2">
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;<asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                    </td>
                </tr>
            </table>
        
    </form>
</body>
</html>
