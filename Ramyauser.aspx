<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ramyauser.aspx.cs" Inherits="UserRegistrtion_Form22.Ramyauser" %>

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
  <h1>Registration Form</h1>
</div>

            <div class="container">
  <div class="row">
    <div class="col-sm-2"></div>  
    <div class="col-sm-4">  
        <asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label>
    </div>
    <div class="col-sm-4">
        <asp:TextBox ID="txtfirstname" runat="server" Height="31px" Width="199px" CssClass="form-control"></asp:TextBox>
    </div>
          <div class="col-sm-2"></div>
  </div><br />

                 <div class="row">
    <div class="col-sm-2"></div>  
    <div class="col-sm-4">  
        <asp:Label ID="Label2" runat="server" Text="LastName"></asp:Label>
    </div>
    <div class="col-sm-4">
        <asp:TextBox ID="txtlastname" runat="server" Height="29px" Width="197px" CssClass="form-control"></asp:TextBox>
    </div>
          <div class="col-sm-2"></div>
  </div><br />


  <div class="row">
    <div class="col-sm-2"></div>  
    <div class="col-sm-4">  
        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
    </div>
    <div class="col-sm-4">
        <asp:TextBox ID="txtaddress" runat="server" Height="31px" Width="206px" CssClass="form-control"></asp:TextBox>
    </div>
          <div class="col-sm-2"></div>
  </div><br />

                 <div class="row">
    <div class="col-sm-2"></div>  
    <div class="col-sm-4">  
        <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
    </div>
    <div class="col-sm-4">
                <asp:TextBox ID="txtemail" runat="server" TextMode="Email" Height="31px" Width="199px" CssClass="form-control"></asp:TextBox>

    </div>
          <div class="col-sm-2"></div>
  </div><br />

          <div class="row">
    <div class="col-sm-2"></div>  
    <div class="col-sm-4">  
        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
    </div>
    <div class="col-sm-4">
        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="33px" Width="198px" CssClass="form-control"></asp:TextBox>
    </div>
          <div class="col-sm-2"></div>
  </div><br />


                   <div class="row">
    <div class="col-sm-2"></div>  
    <div class="col-sm-4">  
    </div>
    <div class="col-sm-4">
            <asp:Button ID="Button1" runat="server" Text="register" CssClass="btn-success" OnClick="Button1_Click"  />

    </div>
          <div class="col-sm-2"></div>
  </div><br />

                   <div>
                <asp:Label ID="lblalert" runat="server" Text=""></asp:Label>

            </div>

                <div>
                    <asp:GridView ID="ramyaGv" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="869px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
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

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IspatialticConnectionString3 %>" SelectCommand="SELECT * FROM [USERS1]"></asp:SqlDataSource>
<%--                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>--%>

                </div>
           

     </div>

        </div>
    </form>
</body>
</html>
