/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package School.Management.System;

/**
 *
 * @author Shivnarayan Yadav
 */
public class Admin {
    String adminname;
    String password;
    
    public Admin()
    {
        
    }
    
    public Admin(String adminname, String password) 
    {
        this.adminname = adminname;
        this.password = password;
    }
    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}
