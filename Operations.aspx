<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Operations.aspx.cs" Inherits="MogotlaneNick_43230350_Assessment_2_Practical.Operations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #CC99FF">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 354px;
        }
        .auto-style2 {
            width: 218px;
        }
        .auto-style3 {
            width: 354px;
            height: 30px;
        }
        .auto-style4 {
            width: 218px;
            height: 30px;
        }
        .auto-style5 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="UPDATE | DELETE | SEARCH | ADD"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:GridView ID="gvStudentsInfo" runat="server" Width="267px">
                        </asp:GridView>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Name and Surname:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtFullNames" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Contact Numbers:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Module Code:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtModuleCode" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:LinkButton ID="LinkButtonClear" runat="server" OnClick="LinkButtonClear_Click">Clear</asp:LinkButton>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="Button3" runat="server" BackColor="#3399FF" OnClick="Button3_Click" Text="Enter Name And Surname AND Press Me To Search" Width="329px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="Select tutoring date:"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Calendar ID="Calendar" runat="server" BorderColor="#FF3300" OnSelectionChanged="Calendar_SelectionChanged"></asp:Calendar>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lblMessage" runat="server" Font-Italic="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnUpdate" runat="server" BackColor="#66FF33" ForeColor="White" OnClick="btnUpdate_Click" Text="UPDATE" Width="129px" style="height: 26px" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnDelete" runat="server" BackColor="Red" ForeColor="#FFFFCC" OnClick="btnDelete_Click" Text="DELETE" Width="113px" />
                    </td>
                    <td>
                        <asp:Button ID="btnInsert" runat="server" BorderColor="Aqua" BorderStyle="Groove" OnClick="btnInsert_Click" Text="ADD STUDENT" Width="119px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
