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
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    
   \
    
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
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TactParkingDbConnectionString %>" SelectCommand="SELECT * FROM [HourParkingSpot2] WHERE (([reserved] = @reserved) AND ([userid] = @userid))" DeleteCommand="DELETE FROM [HourParkingSpot2] WHERE [pid] = @pid AND [day_id] = @day_id AND [hour_id] = @hour_id" InsertCommand="INSERT INTO [HourParkingSpot2] ([pid], [occupied], [day_id], [hour_id], [reserved], [userid], [timerange]) VALUES (@pid, @occupied, @day_id, @hour_id, @reserved, @userid, @timerange)" UpdateCommand="UPDATE [HourParkingSpot2] SET [occupied] = @occupied, [reserved] = @reserved, [userid] = @userid, [timerange] = @timerange WHERE [pid] = @pid AND [day_id] = @day_id AND [hour_id] = @hour_id">
            <DeleteParameters>
                <asp:Parameter Name="pid" Type="Int32" />
                <asp:Parameter Name="day_id" Type="Int32" />
                <asp:Parameter Name="hour_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pid" Type="Int32" />
                <asp:Parameter Name="occupied" Type="Int32" />
                <asp:Parameter Name="day_id" Type="Int32" />
                <asp:Parameter Name="hour_id" Type="Int32" />
                <asp:Parameter Name="reserved" Type="String" />
                <asp:Parameter Name="userid" Type="String" />
                <asp:Parameter Name="timerange" Type="String" />
            </InsertParameters>
            <selectparameters>
                <asp:Parameter DefaultValue="1" Name="reserved" Type="String" />
                <asp:SessionParameter Name="userid" SessionField="USER_ID" Type="String" />
            </selectparameters>
            <UpdateParameters>
                <asp:Parameter Name="occupied" Type="Int32" />
                <asp:Parameter Name="reserved" Type="String" />
                <asp:Parameter Name="userid" Type="String" />
                <asp:Parameter Name="timerange" Type="String" />
                <asp:Parameter Name="pid" Type="Int32" />
                <asp:Parameter Name="day_id" Type="Int32" />
                <asp:Parameter Name="hour_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style1" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True"></asp:CommandField>
                <asp:TemplateField HeaderText="pid" SortExpression="pid">
                    <EditItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("pid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="timerange" SortExpression="timerange">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("timerange") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("timerange") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="userid" SortExpression="userid">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("userid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("userid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <sortedascendingcellstyle backcolor="#FFF1D4" />
            <sortedascendingheaderstyle backcolor="#B95C30" />
            <sorteddescendingcellstyle backcolor="#F1E5CE" />
            <sorteddescendingheaderstyle backcolor="#93451F" />
        </asp:GridView>
    </form>
</body>
</html>
