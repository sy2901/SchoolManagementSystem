/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package School.Management.System.Dao;

import School.Management.System.Bean.Staff;
import School.Management.System.ConnectionPro;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author Shivnarayan Yadav
 */
public class StaffDao {
    public int addStaff(Staff staff)throws ClassNotFoundException
    {
        Connection con=ConnectionPro.getConnection();
        int result=0;
        try
        {
            String query="insert into staff_info (id,name, father_name,department,dob,gender,mobile_no,email,presentaddress,permanentaddress,qualification) VALUES (?,?,?,?,?,?,?,?,?,?,?);";
            PreparedStatement pt = con.prepareStatement(query);
            pt.setInt(1, staff.getStaffID());
            pt.setString(2, staff.getName());
            pt.setString(3, staff.getFatherName());
            pt.setString(4, staff.getDepartment());
            pt.setString(5, staff.getDob());
            pt.setString(6, staff.getGender());
            pt.setString(7, staff.getMobileNo());
            pt.setString(8, staff.getEmail());
            pt.setString(9, staff.getPresentAddress());
            pt.setString(10, staff.getPermanentAddress());
            pt.setString(11, staff.getCourse());
            result = pt.executeUpdate();
            con.close();
            pt.close();
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return result;
    }
    
}
