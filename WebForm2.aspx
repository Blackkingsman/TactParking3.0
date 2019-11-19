<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="TactParking3._0.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            left: 50%;
            top: -2147483648%;
            width: 716px;
            height: 456px;
        }
       
        .auto-style2 {
            left: 179%;
            top: 90%;
        }
               
    </style>
</head>
<body>
    <div class="jumbotron" id="login-page">Map Selection</div>
    <form id="form1" runat="server" class="auto-style1">
       <div class="container">
                
            <div id="dropdown">
                <asp:DropDownList  ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="PID" DataValueField="PID">
                </asp:DropDownList>
           </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TactParkingDbConnectionString %>" SelectCommand="SELECT * FROM [ParkingSpots] where occupied =0 ORDER BY len([PID]), [PID] "></asp:SqlDataSource>
           </div>
        <asp:Button ID="btnReserve" runat="server" CssClass="auto-style2" Height="65px" OnClick="btnReserve_Click" Text="Reserve" Width="163px" />
        <asp:Image ID="Image1" runat="server" Height="410px" ImageUrl="~/Images/LookUpMapSample.jpg" Width="690px" />
    </form>
</body>
</html>
