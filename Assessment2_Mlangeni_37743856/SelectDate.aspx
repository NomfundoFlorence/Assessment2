<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectDate.aspx.cs" Inherits="Assessment2_Mlangeni_37743856.SelectDate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
        .auto-style2 {
            width: 353px;
        }
        .auto-style3 {
            width: 500px;
            height: 47px;
        }
        .auto-style4 {
            width: 353px;
            height: 47px;
        }
        .auto-style5 {
            height: 47px;
        }
        .auto-style6 {
            width: 500px;
            height: 65px;
        }
        .auto-style7 {
            width: 353px;
            height: 65px;
        }
        .auto-style8 {
            height: 65px;
        }
        .auto-style9 {
            width: 500px;
            height: 32px;
        }
        .auto-style10 {
            width: 353px;
            height: 32px;
        }
        .auto-style11 {
            height: 32px;
        }
        .auto-style15 {
            width: 500px;
            height: 213px;
        }
        .auto-style16 {
            width: 353px;
            height: 213px;
        }
        .auto-style17 {
            height: 213px;
        }
        .auto-style18 {
            width: 500px;
            height: 230px;
        }
        .auto-style19 {
            width: 353px;
            height: 230px;
        }
        .auto-style20 {
            height: 230px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%; background-color: #FF9999;">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblHeading" runat="server" Text="BOOK.appointment"></asp:Label>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblSearch" runat="server" Text="Search for practitioner:"></asp:Label>
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="155px">
                            <asp:ListItem>Pediatrician</asp:ListItem>
                            <asp:ListItem>Neurologist</asp:ListItem>
                            <asp:ListItem>Dermatologist</asp:ListItem>
                            <asp:ListItem>Dentist</asp:ListItem>
                            <asp:ListItem>Oncologist</asp:ListItem>
                            <asp:ListItem>Physiologist</asp:ListItem>
                            <asp:ListItem>Cardiologist</asp:ListItem>
                            <asp:ListItem>Gynaecologist</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:ListBox ID="ListBox1" runat="server" Height="191px" Width="340px"></asp:ListBox>
                    </td>
                    <td class="auto-style19">&nbsp;<asp:Panel ID="Panel1" runat="server" BorderColor="#66FF66" GroupingText="Update Details" Height="177px">
                        <br />
                        <asp:Label ID="lblDetails" runat="server" Text="Provide surname and phone number:"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblSurname" runat="server" Text="Surname:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblNumber" runat="server" Text="Phone number:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update details" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="hypBack" runat="server" NavigateUrl="~/Default.aspx">Back</asp:HyperLink>
                        </asp:Panel>
                    </td>
                    <td class="auto-style20">
                        <asp:GridView ID="GridView1" runat="server" Height="147px">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="lblWarning" runat="server" Font-Italic="True" Text="*You can only select a date in future of today's date"></asp:Label>
                    </td>
                    <td class="auto-style10"></td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Calendar ID="theCalendar" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="304px">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="btnConfirm" runat="server" Text="Confirm appoinment" />
                        <br />
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
