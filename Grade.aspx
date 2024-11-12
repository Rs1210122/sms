<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Grade.aspx.cs" Inherits="Grade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
        .auto-style3 {
            font-weight: bold;
            font-style: italic;
        }
        .auto-style4 {
            width: 92px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Garde Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="New" CssClass="auto-style3" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Save" CssClass="auto-style3" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="Update" CssClass="auto-style3" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" Text="Delete" CssClass="auto-style3" OnClick="Button4_Click" />
                    <asp:Button ID="Button5" runat="server" Text="AllSearch" CssClass="auto-style3" OnClick="Button5_Click" />
                    <asp:Button ID="Button6" runat="server" Text="PSearch" CssClass="auto-style3" OnClick="Button6_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/RptGrade.aspx">Report</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="grade_id" HeaderText="grade_id" SortExpression="grade_id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="desc1" HeaderText="desc1" SortExpression="desc1" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [grade]"></asp:SqlDataSource>
    </form>
</body>
</html>
