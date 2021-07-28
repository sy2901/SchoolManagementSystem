<%-- 
    Document   : addStaff
    Created on : 27 Nov, 2020, 9:23:33 AM
    Author     : Shivnarayan Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random" %>
<!DOCTYPE html>
<html lang="en">
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="css/tp.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="css/bootstrap.min.js"></script>
         <jsp:include page="header.jsp"/>
    </head>
<body>
    <jsp:include page="navigation.jsp"/>
    <%
        Random ran = new Random();
        long first4 = (ran.nextLong() % 9000L) + 1000L;
        long first2 = Math.abs(first4);
        int first=Integer.parseInt("5533"+(int)first2);
    %>
 <div align="center">
     <h1>Add Staff</h1>
  <form action="StaffServlet" method="post">
   <table style="with: 100%">
       
    <tr>
        <td>Name &nbsp;:&nbsp;</td>
        <td><input type="text" name="name" placeholder="First Name" maxlength="30" class="form-control" autofocus required></td>
        <td>Father's Name &nbsp;:&nbsp;</td>
         <td><input type="text" name="fatherName" placeholder="Father's Name" maxlength="30" class="form-control" required></td>
    </tr>
    
    <tr>
         <td>Staff Type &nbsp;:&nbsp;</td>
         <td>
             <select name="department" required size="1">
                <option value="select">--------select--------</option>
                <option value="Teaching">Teaching</option>
                <option value="Accountant">Accountant</option>
                <option value="Librarian">Librarian</option>
                <option value="Peon">Peon</option>
                <option value="Cleaner">Cleaner</option>
                <option value="Other-Staff">other Staff</option>        
            </select>
         </td>
         <td>Date of Birth &nbsp;:&nbsp;</td>
         <td><input type="date" name="dob" class="form-control" required></td>
    </tr>
    
    <tr>
        <td>Gender &nbsp;:&nbsp;</td>
        <td><input type="radio" name="gender" value="Male" required>Male
            <input type="radio" name="gender" value="Female" required>Female
            <input type="radio" name="gender" value="Other" required>Other</td>
    </tr>
    
    <tr>
        <td>Mobile No &nbsp;:&nbsp;</td>
        <td><input type="text" name="mobileNo" placeholder="Mobile Number" maxlength="10" alt="Contact Number" size="10" class="form-control" required></td>
        <td>Email &nbsp;:&nbsp;</td>
        <td><input type="email" name="email" placeholder="Email" maxlenght="30" class="form-control" required></td>
    </tr>
    
    <tr>
     <td> Present Address &nbsp;:&nbsp;</td>
     <td><textarea rows="2" cols="40" name="presentAddress" placeholder="Present Address" class="form-control" maxlength="150" required></textarea></td>
     <td> Permanent Address &nbsp;:&nbsp;</td>
     <td><textarea rows="2" cols="40" name="permanentAddress" placeholder="Permanent Address" class="form-control" maxlength="150" required></textarea></td>
    </tr>
    
    <tr>
        <td>Staff ID &nbsp;:&nbsp;</td>
        <td><input type="number" name="staffID" class="form-control" value=<% out.println(first); %> size="10" readonly required></td>
        <td>Qualification &nbsp;:&nbsp;</td>
        <td>
            <select name="qualification" size="1" required>
                <option value="select">----------select----------</option>
                <option value="HSC">HSC</option>
                <option value="SSC">SSC</option>
                <option value="Graduate">Graduate</option>
                <option value="Post-Graduate">Post Graduate</option>
            </select>
        </td>
    </tr>
   </table>
        <br>
   <input type="submit" value="Submit" style="width:175px" class="btn btn-primary active">
   <input type="reset" value="Clear" style="width:175px" class="btn btn-primary active">
   <br>
  </form>
 </div>
</body>
</html>
