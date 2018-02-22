<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Product.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 276px;
        }
        .auto-style5 {
            width: 276px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            width: 970px;
        }
        .auto-style8 {
            height: 30px;
            width: 970px;
        }
        .auto-style9 {
            width: 10px;
        }
        .auto-style10 {
            height: 30px;
            width: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">&nbsp;&nbsp; Product ID-</td>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style9" colspan="0">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">*Product Name-</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server" Width="201px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter a Name" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Digits not allowed" ForeColor="#009999" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style9" colspan="0">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">*Product Category-</td>
            <td class="auto-style7">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="208px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>D</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select a Category" ForeColor="Red" InitialValue="Select a Category1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style9" colspan="1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">*Unit Price-</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" OnTextChanged="TextBox2_TextChanged" style="margin-left: 1px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a Unit Price" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Correct Range" ForeColor="#6600FF" MaximumValue="10000000" MinimumValue="1" Type="Double"></asp:RangeValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Alphabets Not Allowed" ForeColor="#00CC66" ValidationExpression="^[0-9]*(\.[0-9]+)?$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style9" colspan="0">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">*Total Number Available-</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" Width="199px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Total No Available" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Alphabets Not Allowed" ForeColor="#00CC66" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style10" colspan="0"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style4">Description-</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox4" runat="server" Height="45px" Width="200px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style9" colspan="0">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Details" Width="235px" />
    <br />
    <br />
&nbsp;
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="width: 187px">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
</asp:Content>
