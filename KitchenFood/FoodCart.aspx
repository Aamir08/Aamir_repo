<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodCart.aspx.cs" Inherits="KitchenFood.FoodCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <br />
        <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Goto Home page" />
&nbsp;<asp:Button ID="btnOrderHistory" runat="server" OnClick="btnOrderHistory_Click" Text="My orders" />
          
    
        <br />
        <br />
        <asp:GridView ID="gvCart" runat="server">
        </asp:GridView>
        <br />
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
          
    
        <br />
        <br />
          
    
    </form>
    
</body>
</html>
