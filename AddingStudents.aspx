<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddingStudents.aspx.cs" Inherits="MogotlaneNick_43230350_Assessment_2_Practical.AddingStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #CC66FF">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 377px;
        }
        .auto-style2 {
            width: 142px;
        }
        .auto-style3 {
            width: 377px;
            height: 26px;
        }
        .auto-style4 {
            width: 142px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
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
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="STUDENT INFO MANAGE FORM"></asp:Label>
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
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorFullNames" runat="server" ControlToValidate="txtFullNames" ErrorMessage="Enter name and surname!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Contact Numbers:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorContactNo" runat="server" ControlToValidate="txtContactNo" ErrorMessage="Enter contact numbers!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
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
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorModuleCode" runat="server" ControlToValidate="txtModuleCode" ErrorMessage="Enter module code!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:LinkButton ID="LinkButtonSearch" runat="server" OnClick="LinkButtonSearch_Click">Clear</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
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
                        <asp:Calendar ID="Calendar" runat="server" BorderColor="#FF6600" OnSelectionChanged="Calendar_SelectionChanged"></asp:Calendar>
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnInsert" runat="server" BackColor="#CCFF66" BorderStyle="Solid" ForeColor="#FF3300" Height="28px" OnClick="btnInsert_Click" Text="ADD STUDENT" Width="153px" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="LinkButtonBack" runat="server" OnClick="LinkButtonBack_Click">Back</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
