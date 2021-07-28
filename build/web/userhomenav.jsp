<%-- 
    Document   : userhomenav
    Created on : 26 Nov, 2020, 12:00:53 AM
    Author     : Shivnarayan Yadav
--%>

<%@page import="School.Management.System.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("userLogin.jsp");
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
                        <a class="nav-link" href="userhome.jsp" style="color: white">Home</a>
                    </li>
                    
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" style="color: white">Application Forms</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="admission.jsp">Admission Form</a>
   
                        </div>
                    </li>
                    
                    
                    
                    <li class="nav-item">
                        <a class="nav-link" href="LogoutServlet" style="color: white">Logout</a>
                    </li>
                    
                   
                    <li class="nav-item ">
                        
                        <a class="nav-link" href="#" style="color:white; font-family:Times New Roman; font-style: italic;font-weight: 700;font-size: 18px"><% out.print("Welcome, "+user.getName()); %></a>
                    </li>
                    
                </ul>
            </div>
        </nav>
    </body>
</html>

