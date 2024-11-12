<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Parent.aspx.cs" Inherits="Parent" %>

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
            width: 132px;
        }
        .auto-style4 {
            font-weight: bold;
            font-style: italic;
        }
        .auto-style5 {
            width: 132px;
            height: 33px;
        }
        .auto-style6 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Parent_ID</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">First Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Last Name</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Date of Birth</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Phone</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mobile</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Status</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="New" CssClass="auto-style4" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Save" CssClass="auto-style4" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="Update" CssClass="auto-style4" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" Text="Delete" CssClass="auto-style4" OnClick="Button4_Click" />
                    <asp:Button ID="Button5" runat="server" Text="AllSearch" CssClass="auto-style4" OnClick="Button5_Click" />
                    <asp:Button ID="Button6" runat="server" Text="PSearch" CssClass="auto-style4" OnClick="Button6_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/RptParent.aspx">Report</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="parent_id" HeaderText="parent_id" SortExpression="parent_id" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [parent]"></asp:SqlDataSource>
    </form>
</body>
</html>
