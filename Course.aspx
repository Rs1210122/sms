<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Course" %>

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
            width: 115px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Course_ID</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Description</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Grade_ID</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" />
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Delete" />
                    <asp:Button ID="Button5" runat="server" Text="AllSearch" OnClick="Button5_Click" />
                    <asp:Button ID="Button6" runat="server" Text="PSearch" OnClick="Button6_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/RptCourse.aspx">Report</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="desc1" HeaderText="desc1" SortExpression="desc1" />
                <asp:BoundField DataField="grade_id" HeaderText="grade_id" SortExpression="grade_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [course]"></asp:SqlDataSource>
    </form>
</body>
</html>
