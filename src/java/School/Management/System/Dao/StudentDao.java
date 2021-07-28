/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package School.Management.System.Dao;

import School.Management.System.Bean.Student;
import School.Management.System.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Shivnarayan Yadav
 */
public class StudentDao {
    
    public int addStudent(Student student)throws ClassNotFoundException
    {
        Connection con=ConnectionPro.getConnection();
        int result=0;
        
        try
        {
            String query="insert into student_info(id,name,father_name,mother_name,dob,gender,mobile_no,email,presentaddress,permanentaddress,classname) VALUES (?,?,?,?,?,?,?,?,?,?,?);";
            PreparedStatement pt = con.prepareStatement(query);
            pt.setInt(1,student.getStudentID());
            pt.setString(2, student.getName());
            pt.setString(3, student.getFatherName());
            pt.setString(4, student.getMotherName());
            pt.setString(5, student.getDob());
            pt.setString(6, student.getGender());
            pt.setString(7, student.getMobileNo());
            pt.setString(8, student.getEmail());
            pt.setString(9, student.getPresentAddress());
            pt.setString(10, student.getPermanentAddress());
            pt.setString(11, student.getClassName());
            result = pt.executeUpdate();
            con.close();
            pt.close();
        } 
        catch (SQLException e) 
        {
            System.out.println(e.getMessage());
        }
        return result;
    }
    
}
