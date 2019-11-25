﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SpotUtilit.aspx.cs" Inherits="TactParking3._0.SpotUtilit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
     <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
    
    <form id="form1" runat="server">
    
 <nav class="navbar navbar-expand-sm navbar-dark bg-dark rounded">
        <div id="uco-logo" class="logo-image">
            <img src="Images/1152px-University_of_Central_Oklahoma_logo.svg.png" class="img-fluid" />
        </div>
        

        <ul class="navbar-nav mr-auto">
            <li class ="nav-item " style="font-size:20px">
                <a class="nav-link" href ="WebForm2.aspx">Home</a>
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
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="220px" Width="376px">
            <Columns>
                <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid"></asp:BoundField>
                <asp:BoundField DataField="timerange" HeaderText="timerange" SortExpression="timerange"></asp:BoundField>
                <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid"></asp:BoundField>
                <asp:CommandField HeaderText="Cancel" ShowDeleteButton="True" ShowHeader="True"></asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TactParkingDbConnectionString %>" SelectCommand="SELECT [pid], [timerange], [userid] FROM [HourParkingSpot] WHERE ([userid] = @userid)">
            <SelectParameters>
                <asp:SessionParameter Name="userid" SessionField="USER_ID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
