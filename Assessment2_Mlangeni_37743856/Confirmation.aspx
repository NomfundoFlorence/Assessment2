<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Assessment2_Mlangeni_37743856.Confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 54px;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            height: 37px;
        }
        .auto-style4 {
            height: 36px;
        }
        .auto-style5 {
            height: 34px;
        }
        .auto-style6 {
            height: 39px;
        }
        .auto-style7 {
            height: 52px;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            height: 54px;
            width: 751px;
            text-align: center;
        }
        .auto-style10 {
            height: 39px;
            width: 751px;
        }
        .auto-style11 {
            height: 37px;
            width: 751px;
        }
        .auto-style12 {
            height: 34px;
            width: 751px;
        }
        .auto-style13 {
            height: 52px;
            width: 751px;
        }
        .auto-style14 {
            height: 36px;
            width: 751px;
        }
        .auto-style15 {
            width: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%; background-color: #FF9999;">
                <tr>
                    <td class="auto-style9"><strong>
                        <asp:Label ID="lblHeading" runat="server" CssClass="auto-style2" ForeColor="#3333FF" Text="Holiday Carnival Activities"></asp:Label>
                        </strong></td>
                    <td class="auto-style15" rowspan="7">
                        <asp:Image ID="Image1" runat="server" Height="313px" ImageUrl="~/carnival-concept-vector-7980711.jpg" Width="214px" />
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text="Select a date where you'll be available"></asp:Label>
                        <br />
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="334px">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                        <asp:Label ID="lblDate" runat="server" CssClass="auto-style8"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblThankYou" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="lblContacted" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lblContacts" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="lblInquiries" runat="server" CssClass="auto-style8"></asp:Label>
                        <br />
                        <asp:Label ID="lblNum" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblEnd" runat="server" CssClass="auto-style2" Font-Bold="True" Font-Italic="True" ForeColor="Yellow" Text="Thank You!"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hypHome" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
