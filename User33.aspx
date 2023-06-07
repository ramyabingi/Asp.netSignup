<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User33.aspx.cs" Inherits="UserRegistration_Form.User33" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script></head>
<body>
    <form id="form1" runat="server">
        <div>
<div class="jumbotron text-center">           
    <h1>User Registration Form</h1>
                <%--  <p>Resize this responsive page to see the effect!</p> --%>
            </div>

<div class="container">

                <div class="row">
                    <div class="col-sm-2">
                        <br />
                    </div>
                    <div class="col-sm-4">
                        <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtname" runat="server" Width="300px" Height="45px" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
                <br />




                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-4">
                        <asp:Label ID="Label3" runat="server" Text="Surname :"></asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtsurname" runat="server" Width="300px" Height="45px" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                    </div>

                </div>
                <br />

                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-4">
                        <asp:Label ID="Label4" runat="server" Text="City :"></asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtcity" runat="server" Width="300px" Height="45px" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-4">
                        <asp:Label ID="Label5" runat="server" Text="Email :"></asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtemail" runat="server" Width="300px"  Height="45px" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-4">
                        <asp:Label ID="Label6" runat="server" Text="Password :"></asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtpassword" runat="server" Width="300px" Height="45px" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-4">
                         <asp:Button ID="Button1" runat="server"  Text="Save"  CssClass="btn-primary" OnClick="Save_Click" />

                    </div>
                    <div class="col-sm-4">
                        <asp:Button ID="Button2" runat="server" CssClass="btn-primary" Text="Cancel" OnClick="Clear_Click"  />
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
                <br />
                <div>
                    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                </div>

    <div>
        <asp:GridView ID="userview" runat="server" CssClass="table" AutoGenerateColumns="False"
            OnRowDelating="userview_RowDelating"
            OnRowEditing="userview_RowEditing"
            OnRowCanceling="Canceling"
            OnRowUpdating="userview_RowUpdate"
            DataKeyNames="UID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="UID" HeaderText="UID" InsertVisible="False" ReadOnly="True" SortExpression="UID" />
                 <asp:TemplateField HeaderText="Name" SortExpression="Name">
                     <EditItemTemplate>
                         <asp:TextBox ID="txtname" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                     </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Surname" SortExpression="Surname">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtsurname" runat="server" Text='<%# Bind("Surname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Surname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtemail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password" SortExpression="Password">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtpassword" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="true" ControlStyle-CssClass="btn btn-danger" HeaderText="Remove Record" >
<ControlStyle CssClass="btn btn-danger"></ControlStyle>
                </asp:CommandField>
                <asp:CommandField ShowEditButton="true" HeaderText="Edit Record" 
                   ControlStyle-CssClass="btn btn-primary"  >
<ControlStyle CssClass="btn btn-primary"></ControlStyle>
                </asp:CommandField>
            </Columns>
        </asp:GridView>
\
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IspatialticConnectionString2 %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>

<%--        <asp:DataPager ID="DataPager1" runat="server">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                <asp:NumericPagerField />
            </Fields>
        </asp:DataPager>--%>

    </div>

                </div>

        </div>
    </form>
</body>
</html>
