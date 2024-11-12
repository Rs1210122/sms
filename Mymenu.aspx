<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mymenu.aspx.cs" Inherits="Mymenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem Text="Classroom" Value="Classroom">
                    <asp:MenuItem NavigateUrl="~/Classroom.aspx" Text="open" Value="open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptClassroom.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Grade" Value="Grade">
                    <asp:MenuItem NavigateUrl="~/Grade.aspx" Text="open" Value="open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptGrade.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Course" Value="Course">
                    <asp:MenuItem NavigateUrl="~/Course.aspx" Text="open" Value="open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptCourse.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Teacher" Value="Teacher">
                    <asp:MenuItem NavigateUrl="~/Teacher.aspx" Text="open" Value="open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptTeacher.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Student" Value="Student">
                    <asp:MenuItem NavigateUrl="~/Student.aspx" Text="open" Value="open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptTeacher.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Parent" Value="Parent">
                    <asp:MenuItem NavigateUrl="~/Parent.aspx" Text="open" Value="open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptParent.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Attendence" Value="Attendence">
                    <asp:MenuItem NavigateUrl="~/Attendence.aspx" Text="open" Value="open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptAttendence.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Classroom_Student" Value="Classroom_Student">
                    <asp:MenuItem NavigateUrl="~/Classroom_Student.aspx" Text="open" Value="open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptClassroom_Student.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Exam" Value="Exam">
                    <asp:MenuItem NavigateUrl="~/Exam.aspx" Text="open" Value="open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptExam.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Exam_type" Value="Exam_type">
                    <asp:MenuItem NavigateUrl="~/Exam_Type.aspx" Text="open" Value="open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptExam_Type.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Exam_result" Value="Exam_result">
                    <asp:MenuItem NavigateUrl="~/Exam_Result.aspx" Text="open" Value="open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptExam_Result.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
    
    </div>
    </form>
</body>
</html>
