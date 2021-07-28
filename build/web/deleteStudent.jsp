<%-- 
    Document   : deleteStudent
    Created on : 14 Dec, 2020, 1:21:09 AM
    Author     : Shivnarayan Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="School.Management.System.ConnectionPro"%>
<%@page import="java.sql.*" %>
<%
    Connection con=null;
    Statement st=null;
    PreparedStatement pst=null;
    ResultSet rs=null;
 %>
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
         <jsp:include page="navigation.jsp"/>
        <div align="center">
            <form method="post">
            <table style="with: 100%">
                <tr>
                    <td>Student ID &nbsp;:&nbsp;</td>
                    <td><input type="number" name="studentID" placeholder="Enter Student ID" class="form-control" maxlength="10" size="10" autofocus required></td>
                    <td><input type="submit" value="Search" style="width:175px" class="btn btn-primary active"></td>
                </tr>
            </table>
            </form>
        </div>     
        <%
            int count=0;
            try
            {
                int ids;
                String name,fatherName,motherName,dob,gender,mobileNo,email,presentAddress,permanentAddress,className;
                int id=Integer.parseInt(request.getParameter("studentID"));
                con=ConnectionPro.getConnection();
                st=con.createStatement();
                String query="select * from student_info where id="+id;
                rs=st.executeQuery(query);
                while(rs.next())
                {
                   if(rs!=null)
                   {
                       count=1;
                   }
                   ids=rs.getInt("id");
                   name=rs.getString("name");
                   fatherName=rs.getString("father_name");
                   motherName=rs.getString("mother_name");
                   dob=rs.getString("dob");
                   gender=rs.getString("gender");
                   mobileNo=rs.getString("mobile_no");
                   email=rs.getString("email");
                   presentAddress=rs.getString("presentaddress");
                   permanentAddress=rs.getString("permanentaddress");
                   className=rs.getString("classname");
                   
        %>
         
        <div align="center">
            <form>
        <table>
        <tr>
        <td>Name &nbsp;:&nbsp;</td>
        <td><input type="text" name="name" value="<%= name %>" maxlength="30" class="form-control" required readonly></td>
        <td>Father's Name &nbsp;:&nbsp;</td>
         <td><input type="text" name="fatherName" value="<%= fatherName %>" maxlength="30" class="form-control" required readonly></td>
    </tr>
    
    <tr>
         <td>Mother's Name &nbsp;:&nbsp;</td>
         <td><input type="text" name="motherName" value="<%= motherName %>" maxlength="30" class="form-control" required readonly></td>
         <td>Date of Birth &nbsp;:&nbsp;</td>
         <td><input type="date" name="dob" value="<%= dob %>" maxlength="10" class="form-control" required readonly></td>
    </tr>
    
    <tr>
        <td>Gender &nbsp;:&nbsp;</td>
        <td><input type="text" name="gender" value="<%= gender %>" maxlength="10" class="form-control" required readonly></td>
    </tr>
    
    <tr>
        <td>Mobile No &nbsp;:&nbsp;</td>
        <td><input type="number" name="mobileNo" value="<%= mobileNo %>" maxlength="10" size="10" class="form-control" required readonly></td>
        <td>Email &nbsp;:&nbsp;</td>
        <td><input type="email" name="email" value="<%= email %>" maxlength="30" class="form-control" required readonly></td>
    </tr>
    
    <tr>
     <td> Present Address &nbsp;:&nbsp;</td>
     <td><input name="presentAddress" value="<%=presentAddress%>" maxlength="150" class="form-control"  required readonly></td>
     <td> Permanent Address &nbsp;:&nbsp;</td>
     <td><input name="permanentAddress" value="<%= permanentAddress%>" maxlength="150" class="form-control"  required readonly></td>
    </tr>
    
    <tr>
        <td>Student ID &nbsp;:&nbsp;</td>
        <td><input type="number" name="studentID" class="form-control" value="<%=ids%>" readonly required></td>
        <td>Class &nbsp;:&nbsp;</td>
        <td>
            <select name="className" required size="1" disabled>
                <option value="<%=className %>"readonly><%=className%></option>
                <option value="6th">6th</option>
                <option value="7th">7th</option>
                <option value="8th">8th</option>
                <option value="9th">9th</option>
                <option value="10th">10th</option>
            </select>
        
    </tr>
    
       
 
   </table><br>
   <input type="submit" value="Delete" name="delete" style="width:175px" class="btn btn-primary active">
   <br>
            </form>
 </div>
        
        

        <%
            }
            con.close();
            }
             catch(NumberFormatException ae)
            {
            out.println(ae.getMessage());
            }   
             catch(Exception e)
            {
                e.printStackTrace();
            }
            if (count==0)
            {
              out.println("Student ID does not exists");
            }
        %>
        <%
            try{
            int i=0;
            
            int idup=Integer.parseInt(request.getParameter("studentID"));
            if(request.getParameter("delete")!=null)
            {
                con=ConnectionPro.getConnection();
                String sql="Delete from student_info where id="+idup;
                pst=con.prepareStatement(sql);
                i=pst.executeUpdate();
                if(i>0)
            {
                out.println("Record Deleted Successfully");
                response.sendRedirect("adminhome.jsp");
            }
            else
            {
                out.println("Some Problem in Deleting The Record");
            }
            
            }
            con.close();
            }
            catch(NumberFormatException ae)
            {
            out.println(ae.getMessage());
            }   
             catch(Exception e)
            {
                e.printStackTrace();
            }
        %>
    </body>
</html>
