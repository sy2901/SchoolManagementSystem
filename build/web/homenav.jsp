<%-- 
    Document   : homenav
    Created on : 27 Nov, 2020, 12:21:54 AM
    Author     : Shivnarayan Yadav
--%>
<%@page import="School.Management.System.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Admin admin = (Admin) session.getAttribute("adminLog");
    if(admin==null){
        response.sendRedirect("start.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <nav class="navbar navbar-expand-md" style="background-color: #FB7922">
            
            <a class="navbar-brand" href="#"><img src="img/logo.jpeg" style="height:50px;width: 350px"></a>
          
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mynavbar"></button>
            <span class="navbar-toggler-icon"></span>
            <div class="collapse navbar-collapse" id="mynavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="adminhome.jsp" style="color: white">Home</a>
                    </li>
                    
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" style="color: white">Student</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="addStudent.jsp">Add Student</a>
                            <a class="dropdown-item" href="viewStudent.jsp">View Student</a>
                            <a class="dropdown-item" href="updateStudent.jsp">Update Student</a>
                            <a class="dropdown-item" href="deleteStudent.jsp">Delete Student</a>
                        </div>
                    </li>
                    
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" style="color: white">Staff</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="addStaff.jsp">Add Staff</a>
                            <a class="dropdown-item" href="viewStaff.jsp">View Staff</a>
                            <a class="dropdown-item" href="updateStaff.jsp">Update Staff</a>
                            <a class="dropdown-item" href="deleteStaff.jsp">Delete Staff</a>
                        </div>
                    </li>
                    
                    
                    <li class="nav-item">
                        <a class="nav-link" href="LogoutServlet" style="color: white">Logout</a>
                    </li>
                    
                   
                    <li class="nav-item ">
                        
                        <a class="nav-link" href="#" style="color: white; font-family:Times New Roman; font-style: italic;font-weight: 700;font-size: 18px"><% out.print("Welcome, "+admin.getAdminname()); %></a>
                    </li>
                    
                </ul>
            </div>
        </nav>
    </body>
</html>
