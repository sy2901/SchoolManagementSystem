<%-- 
    Document   : index
    Created on : 25 Nov, 2020, 10:56:45 PM
    Author     : Shivnarayan Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav class="navbar navbar-expand-md" style="background-color: #FB7922">
            <a class="navbar-brand" href="start.jsp"><img src="img/logo.jpeg" style="height:50px;width: 350px"></a>
        </nav>
        <div class="container">
            <div class="box">
                <img class="avatar" src="img/user-avatar.png">
                <h1>Login Account</h1>
                <lebel style="color: red">
                <% 
                    String message = (String)request.getAttribute("alertMsg");
                    if(message!=null)
                    {
                        out.println(message);
                    }
                %>
                </lebel>
                <form action="LoginServlet" method="post">
                    <p>Username</p>
                    <input type="text" placeholder="Username" name="name" required>
                    <p>Password</p>
                    <input type="password" placeholder="Password" name="password" minlength="8" maxlength="20" required>
                    <input type="submit" value="Login"><br>
                    <a href="registration.jsp">Create New Account</a>
                </form>
            </div>


        </div>
    </body>
</html>
