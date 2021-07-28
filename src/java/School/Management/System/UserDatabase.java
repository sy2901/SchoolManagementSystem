/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package School.Management.System;

import School.Management.System.Bean.Student;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Shivnarayan Yadav
 */
public class UserDatabase {
    
Connection con;

    public UserDatabase(Connection con) {
        this.con = con;
    }

    //for register user 
    public boolean saveUser(User user) {
        boolean set = false;
        try {
            //Insert register data to database
            String query = "insert into user(name,email,password) values(?,?,?)";

            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getName());
            pt.setString(2, user.getEmail());
            pt.setString(3, user.getPassword());

            pt.executeUpdate();
            set = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return set;
    }

    //log user
    public User logUser(String name, String password) {
        User user = null;

        try {
            String query = "select * from user where name=? and password=?";
            PreparedStatement ps = this.con.prepareStatement(query); 
            ps.setString(1,name);
            ps.setString(2, password);
            
            ResultSet rs  = ps.executeQuery();
            
            if(rs.next()){
                 user = new User();
                 user.setId(rs.getInt("id"));
                 user.setName(rs.getString("name"));
                 user.setEmail(rs.getString("email"));
                 user.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    public Admin adminLog(String adminname,String password)
    {
        Admin admin=null;
        try
        {
            String str="select * from admin where adminname=? and password=?";
            PreparedStatement ps = this.con.prepareStatement(str); 
            ps.setString(1,adminname);
            ps.setString(2,password);
             ResultSet rs  = ps.executeQuery();
            
            if(rs.next())
            {
                 admin = new Admin();
                 admin.setAdminname(rs.getString("adminname"));
                 admin.setPassword(rs.getString("password"));
            }
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        return admin;
    }
    
    
    
}

