<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KitchenFood.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kitchen Food</title>
</head>
<body style="margin-left: 300px;margin-top:50px">
    <form id="form1" runat="server">
    <div>
        
        <table>
            <tr>
                <td>
                    <h1>Login</h1>
                </td>
            </tr>
            <tr>
                <td>
                    User Name:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                </td>
            </tr>

        </table>
        <asp:Label ID="lblAuthUser" runat="server" ></asp:Label>
    </div>
    </form>
</body>
</html>
