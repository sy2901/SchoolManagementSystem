/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package School.Management.System.Servlet;

import School.Management.System.Bean.Student;
import School.Management.System.Dao.StudentDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Shivnarayan Yadav
 */
public class StudentAdmissionServlet extends HttpServlet {
    private StudentDao studentDao;
    public void init()
    {
        studentDao=new StudentDao();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet StudentAdmissionServlet</title>");            
            out.println("</head>");
            
            String name = request.getParameter("name");
            String fatherName = request.getParameter("fatherName");
            String motherName = request.getParameter("motherName");
            String dob = request.getParameter("dob");
            String gender = request.getParameter("gender");
            String mobileNo = request.getParameter("mobileNo");
            String email = request.getParameter("email");
            String presentAddress = request.getParameter("presentAddress");
            String permanentAddress = request.getParameter("permanentAddress");
            String className = request.getParameter("className");
            int id=Integer.parseInt(request.getParameter("studentID"));
           
            
            out.println(name);
            out.println(fatherName);
            out.println(motherName);
            out.println(dob);
            out.println(gender);
            out.println(mobileNo);
            out.println(email);
            out.println(presentAddress);
            out.println(permanentAddress);
            out.println(className);
            out.println(id);

            Student student = new Student();
            student.setStudentID(id);
            student.setName(name);
            student.setFatherName(fatherName);
            student.setMotherName(motherName);
            student.setDob(dob);
            student.setGender(gender);
            student.setMobileNo(mobileNo);
            student.setEmail(email);
            student.setPresentAddress(presentAddress);
            student.setPermanentAddress(permanentAddress);
            student.setClassName(className);
            
            try 
            {
                studentDao.addStudent(student);
            } catch (Exception e) {
            e.printStackTrace();
        }
            response.sendRedirect("userhome.jsp");
            out.println("<body>");
            out.println("<h1>Servlet StudentAdmissionServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
