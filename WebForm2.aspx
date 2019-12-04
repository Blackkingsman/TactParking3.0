<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="TactParking3._0.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            left: 50%;
            top: -2147483648%;
            width: 716px;
            height: 456px;
        }
       
       .button1 {background-color: #4CAF50;
                 border-radius: 14px;
                 padding: 0;
                 margin-top: 8px;
                 border: none;
                 font-size: 25px;
                  
       }

       
               
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-sm navbar-dark bg-dark rounded">
        <div id="uco-logo" class="logo-image">
            <img src="Images/1152px-University_of_Central_Oklahoma_logo.svg.png" class="img-fluid" />
        </div>
        

        <ul class="navbar-nav mr-auto">
            <li class ="nav-item " style="font-size:20px">
                <a class="nav-link" href ="#">Home</a>
            </li>
            <li class="nav-item" style="font-size:20px">
                <a class="nav-link"  href="SpotUtilit.aspx">Reservations</a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-item btn btn-danger rounded " role="button" href="Logout.aspx">Logout</a>
            </li>

        </ul>
    </nav>
    <form id="form1wb2" runat="server" >
       

           
        
        
        <div class="text-center">
            <asp:Image ID="Image1" runat="server" Height="550px" ImageUrl="~\Images2\NewMap.jpg" Width="900px" />
        </div>
        <div class="text-center">
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropbtn">
                <asp:ListItem Value="1">Today</asp:ListItem>
                <asp:ListItem Value="2">Tommorrow</asp:ListItem>
            </asp:DropDownList>
       
        
            <asp:DropDownList ID="DropDownList1" CssClass="dropbtn" runat="server" DataSourceID="SqlDataSource1" DataTextField="PID" DataValueField="PID">
            </asp:DropDownList>
        </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TactParkingDbConnectionString %>" SelectCommand="SELECT * FROM [ParkingSpots] where occupied =0 ORDER BY len([PID]), [PID] "></asp:SqlDataSource>
        <div class="text-center">
            <asp:Button ID="btnReserve" runat="server" CssClass="button1" Height="65px" OnClick="btnReserve_Click" Text="Continue >>" Width="163px" />
        </div>
        
        
    </form>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
