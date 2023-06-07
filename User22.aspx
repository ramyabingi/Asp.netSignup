<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User22.aspx.cs" Inherits="UserRegistration_Form.User22" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
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
                    </div>
                    <div class="col-sm-4">
                        <asp:Label ID="Label2" runat="server" Text="UID :"></asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="TextBox2" runat="server" Width="300px" Height="45px" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-4">
                        <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
                    </div>
                    <div class="col-sm-4">
                        <asp:TextBox ID="TextBox1" runat="server" Width="300px" Height="45px" CssClass="form-control"></asp:TextBox>
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
                        <asp:TextBox ID="TextBox3" runat="server" Width="300px" Height="45px" CssClass="form-control"></asp:TextBox>
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
                        <asp:TextBox ID="TextBox4" runat="server" Width="300px" Height="45px" CssClass="form-control"></asp:TextBox>
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
                        <asp:TextBox ID="TextBox5" runat="server" Width="300px"  Height="45px" CssClass="form-control" TextMode="Email"></asp:TextBox>
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
                        <asp:TextBox ID="TextBox6" runat="server" Width="300px" Height="45px" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-4">
                         <asp:Button ID="Button1" runat="server" Text="Register" OnClick="btnregister" CssClass="btn-primary" />

                    </div>
                    <div class="col-sm-4">
                        <asp:Button ID="Button2" runat="server" CssClass="btn-primary" Text="Update" OnClick="update_Click" />
                    </div>
                    <div class="col-sm-2">
                        <asp:Button ID="Button4" runat="server" Text="Delete" CssClass="btn-danger" OnClick="Delete_Click" />
                    </div>
                </div>
                <br />
                <div>
                    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                </div>

                <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="188px" Width="1100px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="UID" HeaderText="UID" InsertVisible="False" ReadOnly="True" SortExpression="UID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IspatialticConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>

                   

                </div>
            </div>

        
</div>
    </form>
</body>
</html>
