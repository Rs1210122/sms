<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exam_Type.aspx.cs" Inherits="Exam_Type" %>

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
            width: 133px;
        }
        .auto-style4 {
            font-weight: bold;
            font-style: italic;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Exam_Type_ID</td>
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
                    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px"></asp:TextBox>
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
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/RptExam_Type.aspx">Report</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="exam_type_id" HeaderText="exam_type_id" SortExpression="exam_type_id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="desc1" HeaderText="desc1" SortExpression="desc1" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [exam_type]"></asp:SqlDataSource>
    </form>
</body>
</html>
