<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <AnonymousTemplate>
                    <table align="center">
                        <tr>
                            <td>
                                <asp:Panel ID="PanelLoginView1" runat="server" BackColor="#6D9AB5">
                                    <asp:Login ID="Login1" OnLoginError="Login1_LoginError" DestinationPageUrl="~/Default.aspx" runat="server" Style="padding: 15px 15px 15px 15px" DisplayRememberMe="False">
                                        <LayoutTemplate>
                                            <table border="0" cellpadding="1" cellspacing="0" style="border-collapse: collapse; width: 404px;">
                                                <tr>
                                                    <td align="right" style="text-align: left">
                                                        <asp:Label Font-Bold="True" ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label></td>
                                                    <td>
                                                        <asp:TextBox ID="UserName" runat="server" TabIndex="1"></asp:TextBox>
                                                    </td>
                                                    <td align="center" rowspan="5" style="padding: 15px;">
                                                        <asp:LinkButton ID="LoginButton" runat="server" CommandName="Login" TabIndex="5"><div style="color:Black;"><img style="border:0px;" alt="Ok" src='' /> Log In</div></asp:LinkButton>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="text-align: left">
                                                        <asp:Label Font-Bold="True" ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label></td>
                                                    <td>
                                                        <asp:TextBox ID="Password" runat="server" TextMode="Password" TabIndex="2" onkeydown="if ((event.which && event.which == 13) || 
                    (event.keyCode && event.keyCode == 13))
                    {WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions('ctl00$LoginView1$Login1$LoginButton', '', true, 'Login1', '', false, true));} 
                    else {return true};"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." TabIndex="4" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3">
                                                        <asp:Label ID="LoginErrorDetails" runat="server" ForeColor="Red" Text="" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                        </LayoutTemplate>
                                    </asp:Login>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </AnonymousTemplate>
        </div>
    </form>
</body>
</html>
