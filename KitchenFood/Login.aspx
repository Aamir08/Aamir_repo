<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KitchenFood.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kitchen Food</title>
</head>
<body style="margin-left: 580px; margin-top:50px;background-image:url('Food1.jpg'); width: 525px;">
    <form id="form1" runat="server">
    <div>
        
        <br />
        <br />
        
        <table>
            <tr>
                <td>
                    <h1>Login</h1>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    User Name:
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_Admin" runat="server" OnClick="btn_Admin_Click" Text="Admin Login" />
                </td>
            </tr>

            <tr>
                <td>
                    &nbsp;</td>
            </tr>

        </table>
        <asp:Label ID="lblAuthUser" runat="server" ></asp:Label>
    </div>
    </form>
</body>
</html>
