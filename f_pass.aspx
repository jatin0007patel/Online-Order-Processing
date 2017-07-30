<%@ Page Title="" Language="C#" MasterPageFile="~/general.master" AutoEventWireup="true" CodeFile="f_pass.aspx.cs" Inherits="f_pass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
        .style7
        {
            height: 18px;
        }
        .style8
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="1" class="style6">
        <tr>
            <td class="style8" colspan="2">
                <strong>Forget Password</strong></td>
        </tr>
        <tr>
            <td class="style7">
                User Name:</td>
            <td class="style7">
                <asp:TextBox ID="txtunm" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Security Que</td>
            <td>
                <asp:DropDownList ID="drpsec" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Security Answer</td>
            <td>
                <asp:TextBox ID="txtsecans" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="getpwd" runat="server" onclick="getpwd_Click" 
                    Text="Get Password" />
            </td>
        </tr>
    </table>
</asp:Content>

