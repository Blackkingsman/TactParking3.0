<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SpotUtilit.aspx.cs" Inherits="TactParking3._0.SpotUtilit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
     <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            margin-top: 19px;
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
        
    <form id="form1" runat="server">
    <div class="text-center">
        <asp:GridView ID="GridView1" CssClass="auto-style1 text-center" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="pid,day_id,hour_id" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnRowCommand="GridView1_RowCommand">
            <Columns>
               
                <asp:BoundField DataField="pid" HeaderText="Parking Spot ID" ReadOnly="True" SortExpression="pid" />
                <asp:BoundField DataField="day_id" HeaderText="Day ID Today = 1 Tomorrow = 2" ReadOnly="True" SortExpression="day_id" />
                <asp:BoundField DataField="userid" HeaderText="User Email" SortExpression="userid" />
                <asp:BoundField DataField="timerange" HeaderText="Booked Time" SortExpression="timerange" />
                <asp:ButtonField ButtonType="Button"
                    CommandName="Directions"
                    Text="Get Directions"
               
                    ControlStyle-BackColor="Green"
                    ControlStyle-ForeColor="Black"
                    ControlStyle-Font-Bold="true"
                    ControlStyle-Font-Underline="true" HeaderText="Directions"
                    >
                    <ControlStyle BackColor="Green"></ControlStyle>
                </asp:ButtonField>
                <asp:ButtonField ButtonType="Button"
                    CommandName="Update"
                    Text="Cancel Reservation"
                    ControlStyle-BackColor="Red"
                    ControlStyle-Font-Bold="true"
                    ControlStyle-ForeColor="Black"
                    ControlStyle-Font-Underline="true" HeaderText="Cancel Reservation">
                    <ControlStyle BackColor="Red"></ControlStyle>
                </asp:ButtonField>
               
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="Reservation Successfully Cancelled!!" Visible="False" Font-Bold="True" ForeColor="#00CC00" Height="70px"></asp:Label>
    </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TactParkingDbConnectionString %>" SelectCommand="SELECT * FROM [HourParkingSpot2] WHERE (([userid] = @userid) AND ([reserved] = @reserved))" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter Name="userid" SessionField="USER_ID" Type="String" />
                <asp:Parameter DefaultValue="1" Name="reserved" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
