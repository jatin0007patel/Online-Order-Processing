<%@ Page Language="C#" MasterPageFile="~/general.master" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 29px;
            width: 491px;
            text-align: left;
        }
        .style2
        {
            text-decoration: underline;
            font-weight: bold;
        }
        .style3
        {
            width: 198px;
        }
    .style4
    {
        width: 198px;
        height: 26px;
    }
    .style5
    {
        height: 26px;
    }
        .style7
        {
            color: #000066;
            font-size: small;
            font-family: Calibri;
            width: 178px;
        }
        .style8
        {
            width: 178px;
            height: 26px;
            color: #000066;
            font-size: small;
            font-family: Calibri;
        }
        .style9
        {
            font-family: Calibri;
            font-size: small;
            color: #000066;
            width: 327px;
            text-decoration: underline;
        }
        .style10
        {
            text-align: center;
            color: #000066;
            font-family: Calibri;
            font-weight: bold;
            font-size: small;
        }
        .style12
        {
            width: 136px;
        }
        .style13
        {
            color: #FF0066;
            font-size: x-large;
            font-weight: bold;
            font-style: italic;
            height: 26px;
            width: 136px;
        }
        .style14
        {
            text-align: center;
            width: 486px;
        }
        .style15
        {
            font-size: small;
            color: #FF0066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style9" colspan="3">
            <p class="style14">
                &nbsp;<span class="style15">User Registration</span></p>
        </td>
    </tr>
    <tr>
        <td class="style7">
            FIRST NAME:</td>
        <td class="style12">
            <asp:TextBox ID="fname" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="fname" ErrorMessage="First Name Is Required" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;MIDDLE NAME:</td>
        <td class="style13">
            <asp:TextBox ID="mname" runat="server"></asp:TextBox>
        </td>
        <td class="style5">
            </td>
    </tr>
    <tr>
        <td class="style7">
            LAST NAME:</td>
        <td class="style12">
            <asp:TextBox ID="lname" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            ADDRESS:</td>
        <td class="style12">
            <asp:TextBox ID="Addresstxt" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="Addresstxt" ErrorMessage="Address Is Needed." 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            CITY:</td>
        <td class="style12">
            <asp:DropDownList ID="CityDrop" runat="server" Height="16px" Width="127px">
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="CityDrop" ErrorMessage="Select Your City" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            PINCODE:</td>
        <td class="style12">
            <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            PHONE:</td>
        <td class="style12">
            <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtphone" ErrorMessage="Phone NO. Is Must Be Needed." 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            EMAIL:</td>
        <td class="style12">
            <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox>
                        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="emailtxt" ErrorMessage="Email ID Is Required" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
    </tr>
    <tr>
        <td class="style7">
            USER NAME:</td>
        <td class="style12">
            <asp:TextBox ID="uname" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="uname" ErrorMessage="User Name Is Required" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            PASSWORD:</td>
        <td class="style12">
            <asp:TextBox ID="passwordtxt" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="passwordtxt" ErrorMessage="Please Enter Yoyr Password." 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            CONFIRM PASSWORD:</td>
        <td class="style12">
            <asp:TextBox ID="cpasstxt" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="passwordtxt" ControlToValidate="cpasstxt" 
                ErrorMessage="Password Not Match"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            SEQURITY QUESTION:</td>
        <td class="style12">
            <asp:DropDownList ID="SecQuesDropDown" runat="server" Height="16px" 
                Width="110px">
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="SecQuesDropDown" ErrorMessage="Select Your Sequirity Question" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            SEQURITY ANSWER:</td>
        <td class="style12">
            <asp:TextBox ID="Anstxt" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" class="style10">
            <b>
            <asp:Button ID="Button1" runat="server" Height="26px" onclick="Button1_Click" 
                Text="SUBMIT" />
            </b>
        </td>
    </tr>
</table>
            </asp:Content>

