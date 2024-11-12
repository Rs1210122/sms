<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Classroom_Student.aspx.cs" Inherits="Classroom_Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 114px;
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
                <td class="auto-style3">Classroom_ID</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Student_ID</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="New" style="font-weight: 700; font-style: italic" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save" style="font-weight: 700; font-style: italic" />
                    <asp:Button ID="Button3" runat="server" Text="Update" CssClass="auto-style4" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" Text="Delete" CssClass="auto-style4" OnClick="Button4_Click" />
                    <asp:Button ID="Button5" runat="server" Text="AllSearch" CssClass="auto-style4" OnClick="Button5_Click"  />
                    <asp:Button ID="Button6" runat="server" Text="PSearch" CssClass="auto-style4" OnClick="Button6_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/RptClassroom_Student.aspx">Report</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="classroom_id" HeaderText="classroom_id" SortExpression="classroom_id" />
                <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [class_room_student]"></asp:SqlDataSource>
    </form>
</body>
</html>
