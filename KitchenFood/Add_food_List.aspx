<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_food_List.aspx.cs" Inherits="KitchenFood.Add_food_List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Add food details</h1>
        <table>
            <tr>
                <td>Food Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td>
                    <asp:TextBox ID="txtFdName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Food Ingredients :</td>
                <td>
                    <asp:TextBox ID="txtFdIngre" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Food Category&nbsp;&nbsp;&nbsp; :</td>
                <td>
                    <asp:DropDownList ID="DD_Food_Cat" runat="server"  ToolTip="Please select Food Category">
                       
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Food Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td>
                    <asp:TextBox ID="txtFdPrice" runat="server"></asp:TextBox></td>
            </tr>
        </table>


        
    </div>
        <asp:Button ID="btnFdAdd" runat="server" OnClick="btnFdAdd_Click" Text="Save Changes" Width="245px" />
        <br />
        <asp:Label ID="lblFdAddSuc" runat="server"></asp:Label>
    </form>
</body>
</html>
