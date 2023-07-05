<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admission.aspx.cs" Inherits="Assessment2_Mlangeni_37743856.Admission" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 55px;
        }
        .auto-style2 {
            height: 35px;
        }
        .auto-style3 {
            height: 40px;
        }
        .auto-style4 {
            height: 182px;
        }
        .auto-style5 {
            height: 55px;
            width: 540px;
        }
        .auto-style7 {
            height: 40px;
            width: 540px;
        }
        .auto-style8 {
            height: 182px;
            width: 540px;
        }
        .auto-style10 {
            height: 37px;
            width: 540px;
        }
        .auto-style11 {
            height: 37px;
        }
        .auto-style12 {
            width: 540px;
            height: 44px;
        }
        .auto-style13 {
            height: 44px;
        }
        .auto-style14 {
            width: 540px;
            height: 41px;
        }
        .auto-style15 {
            height: 41px;
        }
        .auto-style16 {
            font-size: x-large;
        }
        .auto-style17 {
            font-size: large;
        }
        .auto-style18 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%; background-color: #FF9999;">
                <tr>
                    <td class="auto-style5">
                        <strong>
                        <asp:Label ID="lblHeading" runat="server" Text="Holiday Carnival Activities" CssClass="auto-style16" ForeColor="#3333FF"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="lblDear" runat="server" CssClass="auto-style17"></asp:Label>
                        <br />
                        <asp:Label ID="lblSearch" runat="server" CssClass="auto-style17" Text="Search for your name (using space on the right):"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtSearch" runat="server" CssClass="auto-style18" OnTextChanged="txtSearch_TextChanged" Width="159px"></asp:TextBox>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:ListBox ID="ListBox1" runat="server" Height="137px" Width="461px" CssClass="auto-style18"></asp:ListBox>
                        <br />
                        <asp:Label ID="lblError" runat="server" CssClass="auto-style17"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="81px" Width="170px">
                            <AlternatingRowStyle BackColor="White" />
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="lblAdd" runat="server" Text="Would you like to add or remove a participant?" CssClass="auto-style17"></asp:Label>
                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:RadioButton ID="radYes" runat="server" AutoPostBack="True" Text="Yes" CssClass="auto-style17" GroupName="Choice" OnCheckedChanged="radYes_CheckedChanged" />
&nbsp;<asp:RadioButton ID="radNo" runat="server" Text="No" CssClass="auto-style17" GroupName="Choice" OnCheckedChanged="radNo_CheckedChanged" />
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblName" runat="server" Text="Name:" CssClass="auto-style17"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtName" runat="server" CssClass="auto-style18"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Required!" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style13"></td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="lblSurname" runat="server" Text="Surname:" CssClass="auto-style17"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtSurname" runat="server" CssClass="auto-style18"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="Required!" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblNumber" runat="server" Text="Phone number:" CssClass="auto-style17"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtNumber" runat="server" CssClass="auto-style18"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNumber" ErrorMessage="Required!" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblEmail" runat="server" Text="Email address:" CssClass="auto-style17"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style18"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid format!" Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style11">
                        <asp:Button ID="btnInsert" runat="server" BackColor="#6699FF" CssClass="auto-style18" OnClick="btnInsert_Click" Text="Insert" Width="127px" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnDelete" runat="server" BackColor="#6699FF" CssClass="auto-style18" OnClick="btnDelete_Click" Text="Delete" Width="110px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnConfirm" runat="server" BackColor="Fuchsia" CssClass="auto-style18" OnClick="btnConfirm_Click" Text="Confirm Admission" Width="248px" />
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblStatus" runat="server" CssClass="auto-style17"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
