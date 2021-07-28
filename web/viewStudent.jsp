<%-- 
    Document   : viewStudent
    Created on : 27 Nov, 2020, 9:21:53 AM
    Author     : Shivnarayan Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="School.Management.System.ConnectionPro"%>
<%@page import="java.sql.*" %>
<%
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp"/>
    </head>
    <body>
        <jsp:include page="navigation.jsp"/>
        <h1 align='center' style="color: blue"><b><u>Student's Record</u></b></h1>
        <table border="1" cellspacing="0" align="center">
            <tr>
                
                <td align="center"><b>Student ID</b></td>
                <td align="center"><b>Student's Name</b></td>
                <td align="center"><b>Father's name</b></td>
                <td align="center"><b>Mother's Name</b></td>
                <td align="center"><b>Date of Birth</b></td>
                <td align="center"><b>Gender</b></td>
                <td align="center"><b>Mobile No</b></td>
                <td align="center"><b>Email</b></td>
                <td align="center"><b>Present Address</b></td>
                <td align="center"><b>Permanent Address</b></td>
                <td align="center"><b>Class</b></td>
            </tr>
        <%
            try
            {
                con=ConnectionPro.getConnection();
                st=con.createStatement();
                String query="select * from student_info";
                rs=st.executeQuery(query);
                while(rs.next())
                {
        %>
        <tr>
            <td><%=rs.getInt("id")%></td>
            <td><%=rs.getString("name") %></td>
            <td><%=rs.getString("father_name")%></td>
            <td><%=rs.getString("mother_name")%></td>
            <td><%=rs.getString("dob")%></td>
            <td><%=rs.getString("gender")%></td>
            <td><%=rs.getString("mobile_no")%></td>
            <td><%=rs.getString("email")%></td>
            <td><%=rs.getString("presentaddress")%></td>
            <td><%=rs.getString("permanentaddress")%></td>
            <td><%=rs.getString("classname")%></td>
            
        </tr>
        <%
            }
            con.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        %>
        </table>
    </body>
</html>
