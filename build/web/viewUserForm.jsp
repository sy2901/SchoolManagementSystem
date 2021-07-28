<%-- 
    Document   : viewUserForm
    Created on : 13 Dec, 2020, 10:52:24 PM
    Author     : Shivnarayan Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="css/tp.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="css/bootstrap.min.js"></script>
        <jsp:include page="header.jsp"/>
    </head>
    <body>
        <jsp:include page="usernavigation.jsp"/>
        <div align="center">
     <h1>Student Admission Form</h1>
  <form action="StudentAdmissionServlet" method="post">
   <table style="with: 100%">
       
    <tr>
        <td>Name &nbsp;:&nbsp;</td>
        <td><input type="text" name="name" value=<%=request.getParameter("name")%> class="form-control" required readonly></td>
        <td>Father's Name &nbsp;:&nbsp;</td>
         <td><input type="text" name="fatherName" value=<%=request.getParameter("fatherName")%>  class="form-control" required readonly></td>
    </tr>
    
    <tr>
         <td>Mother's Name &nbsp;:&nbsp;</td>
         <td><input type="text" name="motherName" value=<%=request.getParameter("motherName")%> class="form-control" required readonly></td>
         <td>Date of Birth &nbsp;:&nbsp;</td>
         <td><input type="date" name="dob" value=<%=request.getParameter("dob")%> class="form-control" required readonly></td>
    </tr>
    
    <tr>
        <td>Gender &nbsp;:&nbsp;</td>
        <td><input type="text" name="gender" value=<%=request.getParameter("gender")%> class="form-control" required readonly></td>
    </tr>
    
    <tr>
        <td>Mobile No &nbsp;:&nbsp;</td>
        <td><input type="text" name="mobileNo" value=<%=request.getParameter("mobileNo")%> class="form-control" required readonly></td>
        <td>Email &nbsp;:&nbsp;</td>
        <td><input type="email" name="email" value=<%=request.getParameter("email")%> class="form-control" required readonly></td>
    </tr>
    
    <tr>
     <td> Present Address &nbsp;:&nbsp;</td>
     <td><input name="presentAddress" value=<%=request.getParameter("presentAddress")%> class="form-control"  required readonly></td>
     <td> Permanent Address &nbsp;:&nbsp;</td>
     <td><input name="permanentAddress" value=<%=request.getParameter("permanentAddress")%> class="form-control"  required readonly></td>
    </tr>
    
    <tr>
        <td>Student ID &nbsp;:&nbsp;</td>
        <td><input type="number" name="studentID" class="form-control" value=<%=request.getParameter("studentID")%> readonly required></td>
        <td>Class &nbsp;:&nbsp;</td>
        <td> <input type="text" name="className" value=<%=request.getParameter("className")%>  class="form-control" required readonly> </td>
        
    </tr>
    
       
 
   </table><br>
   <input type="checkbox" name="chk1" required>I have check the above information carefully<br>
   <a href="admission.jsp">
   <input type="button" value="Back" style="width:175px" class="btn btn-primary active">
   </a>
   <input type="submit" value="Submit" style="width:175px" class="btn btn-primary active">
   <br>
  </form>
 </div>
    </body>
</html>
