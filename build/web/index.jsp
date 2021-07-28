<%-- 
    Document   : index
    Created on : 27 Nov, 2020, 12:09:15 AM
    Author     : Shivnarayan Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <jsp:include page="header.jsp"/>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script type="text/javascript" src="css/bootstrap.min.js"></script>
    </head>
    <body>
         <nav class="navbar navbar-expand-md" style="background-color: #FB7922">
            <a class="navbar-brand" href="start.jsp"><img src="img/logo.jpeg" style="height:50px;width: 350px"></a>
        </nav>
        <div class="container" style="margin-top: 100px">
            <div class="row">
                <div class="col-sm-3">
                    
                </div>
                <div class="col-sm-6">
                    <h1 class="text-center" style="font-family: 'Monotype Corsiva';color:purple">Admin Login</h1>
                    <form method="post" action="LoginServlet">
                        <div class="form-group">
                            <label><b>Username:</b></label>
                            <input type="text" name="adminname" placeholder="Admin Name"class="form-control" required>
                            <label><b>Password:</b></label>
                            <input type="password" name="password" placeholder="Password"class="form-control" required>
                            <br>
                            <input type="submit" value="Login" style="width:175px" class="btn btn-primary active" autofocus="true">
                            
                           <a href="start.jsp">
                           <input type="button" name="cancel" value="Cancel" style="width:175px;" class="btn btn-primary">
                           </a>
                        </div>
                    </form> 
                </div>
                <div class="col-sm-3">
                    
                </div>
            </div>
        </div>
    </body>
</html>
