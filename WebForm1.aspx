<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TactParking3._0.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml%22%3E
<head runat="server">
    <title>Login</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
<!--forks-->
    
    <div class="modal-dialog text-center">
        <div class="col-sm-9 main-section">
            <div class="modal-content">
                <div class="col-11 user-img">
                    <img src="Images/user-image-.png" />
                </div>
    <div class="col-12 form-input">
       <form id="form1" runat="server">
        <div>
            <div class="form-inline" id="form-group-email">
            <asp:Label class="label2" for="TextBox1" ID="Username" runat="server" placeholder="Enter Email">Username</asp:Label> 
            <asp:TextBox Cssclass="email-input form-control" ID="TextBox1" runat="server" placeholder="Enter Email"></asp:TextBox>
           </div>
        <div class="form-inline" id="form-group-password">
        <asp:Label  Cssclass="label1 " for="TextBox2" ID="Password" runat="server" >Password </asp:Label> 
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Password" CssClass="password-input form-control"></asp:TextBox>
        </div>
        <p>
            <asp:Button type="submit" class="btn btn-success" ID="Button1" runat="server" OnClick="Button1_Click" Text="login" />
        </p>
        </div>
    </form>
    </div>
            </div>
        </div>
    </div>

</body>
</html>