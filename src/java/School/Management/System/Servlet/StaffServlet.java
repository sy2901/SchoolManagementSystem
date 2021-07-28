/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package School.Management.System.Servlet;

import School.Management.System.Bean.Staff;
import School.Management.System.Dao.StaffDao;
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
public class StaffServlet extends HttpServlet {
    private StaffDao staffDao;
    public void init()
    {
        staffDao=new StaffDao();
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
            out.println("<title>Servlet StaffServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            String name = request.getParameter("name");
            String fatherName = request.getParameter("fatherName");
            String departmentName = request.getParameter("department");
            String dob = request.getParameter("dob");
            String gender = request.getParameter("gender");
            String mobileNo = request.getParameter("mobileNo");
            String email = request.getParameter("email");
            String presentAddress = request.getParameter("presentAddress");
            String permanentAddress = request.getParameter("permanentAddress");
            String qualification = request.getParameter("qualification");
            int id = Integer.parseInt(request.getParameter("staffID"));
            
            

            Staff staff = new Staff();
            staff.setStaffID(id);
            staff.setName(name);
            staff.setFatherName(fatherName);
            staff.setDepartment(departmentName);
            staff.setDob(dob);
            staff.setGender(gender);
            staff.setMobileNo(mobileNo);
            staff.setEmail(email);
            staff.setPresentAddress(presentAddress);
            staff.setPermanentAddress(permanentAddress);
            staff.setCourse(qualification);
            
            try 
            {
                staffDao.addStaff(staff);
            } catch (Exception e) {
            e.printStackTrace();
        }
            response.sendRedirect("addStaff.jsp");
            
            out.println("<h1>Servlet StaffServlet at " + request.getContextPath() + "</h1>");
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
