<%-- 
    Document   : error
    Created on : 25 Nov, 2020, 11:31:11 PM
    Author     : Shivnarayan Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Saraswati Vidyamandir</title>
    </head>
    <body>
        <% request.setAttribute("alertMsg", "Incorrect Username or Password!"); %>
        <jsp:include page="userLogin.jsp"/>
    </body>
</html>
