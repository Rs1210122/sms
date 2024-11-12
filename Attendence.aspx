<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Attendence.aspx.cs" Inherits="Attendence" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 30s%;
            background-color:aliceblue;
        }
        .auto-style3 {
            height: 31px;
        }
        .auto-style4 {
            width: 26px;
            font-weight: 700;
        }
    </style>
</head>
<body><center>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Date</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Student_ID</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Status</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Remarks</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="8">
                    <asp:Button ID="Button1" runat="server" Text="New" style="border-style: none; border-color: inherit; border-width: medium; border-radius: 13px; 
 

  cursor: pointer; font-style: italic" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Save" style="font-weight: 700;font-weight: 13;
   
 font-style: italic" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="Update" style="font-style: font-weight: 13;
    border-style: none; border-color: inherit; border-width: medium; border-radius: 13px;
   
 italic" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" Text="Delete" style="font-weight: 700;font-weight: 13;
    
 font-style: italic" OnClick="Button4_Click" />
                    <asp:Button ID="Button5" runat="server" Text="AllSearch" style="font-weight: 700;font-weight: 13;
    
   
 font-style: italic" OnClick="Button5_Click" />
                    <asp:Button ID="Button6" runat="server" Text="PSearch" style="font-weight: 700;font-weight: 13;
   
 font-style: italic" OnClick="Button6_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/RptAttendence.aspx">Report</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"  bgcolor="aqua" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                <asp:BoundField DataField="student_id" HeaderText="Student ID" SortExpression="student_id" />
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [attendence]"></asp:SqlDataSource>
    </form>
</body>
</html>
