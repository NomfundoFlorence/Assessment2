<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assessment2_Mlangeni_37743856.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 50px;
        }
        .auto-style2 {
            height: 222px;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            height: 44px;
        }
        .auto-style5 {
            height: 41px;
        }
        .auto-style6 {
            height: 42px;
        }
        .auto-style7 {
            height: 40px;
        }
        .auto-style8 {
            height: 9px;
        }
        .auto-style9 {
            height: 36px;
        }
        .auto-style10 {
            height: 50px;
            text-align: center;
            width: 709px;
        }
        .auto-style11 {
            height: 44px;
            width: 709px;
        }
        .auto-style12 {
            height: 41px;
            width: 709px;
        }
        .auto-style13 {
            height: 42px;
            width: 709px;
        }
        .auto-style14 {
            height: 40px;
            width: 709px;
        }
        .auto-style15 {
            height: 9px;
            width: 709px;
        }
        .auto-style16 {
            height: 36px;
            width: 709px;
        }
        .auto-style17 {
            height: 222px;
            width: 709px;
        }
        .auto-style18 {
            width: 709px;
        }
        .auto-style19 {
            height: 50px;
            width: 249px;
        }
        .auto-style20 {
            width: 249px;
        }
        .auto-style27 {
            width: 249px;
            text-align: center;
        }
        .auto-style28 {
            font-size: large;
        }
        .auto-style29 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%; background-color: #FF9999;">
                <tr>
                    <td class="auto-style10"><strong>
                        <asp:Label ID="lblHeading" runat="server" CssClass="auto-style3" ForeColor="#3333FF" Text="Holiday Carnival Activities"></asp:Label>
                        </strong></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="lblName" runat="server" CssClass="auto-style28" Text="Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtName" runat="server" CssClass="auto-style29"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Required!" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style20" rowspan="7">
                        <asp:Image ID="Image1" runat="server" Height="380px" ImageUrl="~/carnival-concept-vector-7980711.jpg" Width="234px" />
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblSurname" runat="server" CssClass="auto-style28" Text="Surname:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtSurname" runat="server" CssClass="auto-style29"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="Required!" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="lblNumber" runat="server" CssClass="auto-style28" Text="Phone number:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtNumber" runat="server" CssClass="auto-style29"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNumber" ErrorMessage="Required!" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="lblEmail" runat="server" CssClass="auto-style28" Text="Email address:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style29"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid format!" Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Label ID="lblSelect" runat="server" CssClass="auto-style28" Text="Select what you would like to participate in"></asp:Label>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style29" GroupingText="Festival Activities Auditions" Height="180px" Width="507px">
                            <asp:RadioButton ID="radSinging" runat="server" GroupName="Activities" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Singing" />
                            <br />
                            <asp:RadioButton ID="radDancing" runat="server" GroupName="Activities" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Dancing" />
                            <br />
                            <asp:RadioButton ID="radDrawing" runat="server" GroupName="Activities" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Drawing" />
                            <br />
                            <asp:RadioButton ID="radPainting" runat="server" GroupName="Activities" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Painting" />
                            <br />
                            <asp:RadioButton ID="radSculpting" runat="server" GroupName="Activities" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Sculpting" />
                            <br />
                            <asp:RadioButton ID="radDrama" runat="server" GroupName="Activities" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Drama" />
                            <br />
                            <asp:RadioButton ID="radPoetry" runat="server" GroupName="Activities" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Poetry" />
                        </asp:Panel>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style27">
                        <asp:Button ID="btnApply" runat="server" CssClass="auto-style29" OnClick="btnApply_Click" Text="Apply for Auditions" Width="175px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
