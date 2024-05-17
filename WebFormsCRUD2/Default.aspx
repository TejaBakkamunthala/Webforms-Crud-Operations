<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsCRUD2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


   

    <table class="w-100">
        <tr>
            <td colspan="2" style="height: 24px; font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; color: #333333;">Complete CRUD Operations in Asp.net c# with SQL Using Stored Procedures</td>
        </tr>
        <tr>
            <td style="width: 314px; height: 30px;">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Product ID"></asp:Label>
            </td>
            <td style="height: 30px">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" BackColor="Blue" ForeColor="White" Text="Search" OnClick="Search" Width="93px" />
            </td>
        </tr>
        <tr>
            <td style="width: 314px; height: 24px">
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Item Name"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 24px; width: 314px">
                <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Specification"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 314px; height: 24px">
                <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Unit"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>PCS</asp:ListItem>
                    <asp:ListItem>KG</asp:ListItem>
                    <asp:ListItem>DZ</asp:ListItem>
                    <asp:ListItem>Ltr</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 24px; width: 314px">
                <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Status"></asp:Label>
            </td>
            <td style="height: 24px">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Runnnig</asp:ListItem>
                    <asp:ListItem>Unused</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="width: 314px">
                <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Created Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 314px; height: 24px;"></td>
            <td style="height: 24px"></td>
        </tr>
        <tr>
            <td style="width: 314px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="Blue" ForeColor="White" Text="Insert" OnClick="Button1_Click" Width="93px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="Blue" ForeColor="White" Text="Update" OnClick="Updatee" Width="93px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="Blue" ForeColor="White" Text="Delete" OnClick="Delete" OnClientClick="return Confirm('Are you sure you wnat to delete ?');" Width="93px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" BackColor="Blue" ForeColor="White" Text="Load" OnClick="Load" Width="93px" />
            </td>
        </tr>
        <tr>
            <td style="width: 314px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" Width="1232px">
                    <HeaderStyle BackColor="Blue" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>


   


   

</asp:Content>
