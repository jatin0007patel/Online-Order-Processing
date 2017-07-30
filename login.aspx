<%@ Page Language="C#" MasterPageFile="~/general.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .style1
        {
            width: 164px;
        }
        .style2
        {
            width: 401px;
        }
        
        .style6
        {
            color: #000066;
            font-size: large;
            font-family: Calibri;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        &nbsp; <table class="style1" style="width: 94%; height: 64px;">
        <tr>
            <td style="text-align: center" class="style6" colspan="2">
                Login</td>
        </tr>
        <tr>
            <td class="style2">
                User Name:</td>
            <td class="style7" style="margin-left: 40px">
                <asp:TextBox ID="Unametxt" runat="server" Height="15px" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Password:</td>
            <td class="style7">
                <asp:TextBox ID="passtxt" runat="server" TextMode="Password" Width="150px" 
                    Height="15px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">New 
                User</asp:LinkButton>
                </td>
            <td class="style6">
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                    BorderStyle="Ridge" Height="26px" Width="88px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Forgot 
                Password</asp:LinkButton>
                </td>
        </tr>
    </table>
    </div>
    <p style="height: 1px">
        &nbsp;</p>
    </asp:Content>

