<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodList.aspx.cs" Inherits="KitchenFood.FoodList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        Please click on the food category to show the available foods<br />

        <asp:Button ID="btnVeg" runat="server" Text="Veg only" OnClick="btnVeg_Click" />
        
        <asp:Button ID="btnNonveg" runat="server" Text="Non Veg only" OnClick="btnNonveg_Click" />

        <asp:Button ID="btnFoodList" runat="server" Text="All Available Food" OnClick="btnFoodList_Click"/>
        <asp:Button ID="btnOrderHistory" runat="server" OnClick="btnOrderHistory_Click" Text="My Orders" />
        <div>
        <asp:GridView ID="gdFoodList" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:CheckBoxField />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <br />
            Please select the food from the given list<br />
            <br />
        <asp:ListBox ID="lbFoodList" Visible="false" runat="server" Width="186px" SelectionMode="Multiple"></asp:ListBox>
            Quantity:<asp:TextBox ID="txtQuantity" runat="server" TextMode="Number">1</asp:TextBox>
            <br />
        </div>
       
        
        </div>
        <asp:Button ID="btnCart" runat="server" Text="Add To Cart" OnClick="btnCart_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Cart" />
        <br />
        <asp:GridView ID="gvCart" runat="server">
        </asp:GridView>
&nbsp;<asp:Label ID="lblTotal" Visible="False" runat="server" Text="Total Amount = "></asp:Label>
        <asp:Label ID="lblTAmount" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnConfirmPayment" runat="server" Text="Confirm Order and make Payment" OnClick="btnConfirmPayment_Click" />
        <br />
        <asp:Label ID="lblPayment" runat="server"></asp:Label>
        <br />
        <br />
        
        <asp:GridView ID="gvOrderHist" runat="server">
        </asp:GridView>
          
    
    </form>
</body>
</html>
