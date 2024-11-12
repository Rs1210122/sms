<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exam_Result.aspx.cs" Inherits="Exam_Result" %>

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
            width: 102px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Exam_ID</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>
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
                <td class="auto-style3">Course_ID</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Marks</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="Button1" runat="server" style="font-weight: 700; font-style: italic" Text="New" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" style="font-weight: 700; font-style: italic" Text="Save" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" style="font-weight: 700; font-style: italic" Text="Update" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" style="font-weight: 700; font-style: italic" Text="Delete" OnClick="Button4_Click" />
                    <asp:Button ID="Button5" runat="server" style="font-weight: 700; font-style: italic" Text="AllSearch" OnClick="Button5_Click" />
                    <asp:Button ID="Button6" runat="server" style="font-weight: 700; font-style: italic" Text="PSearch" OnClick="Button6_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/RptExam_Result.aspx">Report</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="exam_id" HeaderText="exam_id" SortExpression="exam_id" />
                <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />
                <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />
                <asp:BoundField DataField="marks" HeaderText="marks" SortExpression="marks" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [exam_result]"></asp:SqlDataSource>
    </form>
</body>
</html>
