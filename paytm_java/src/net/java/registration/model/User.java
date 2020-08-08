package net.java.registration.model;

import java.io.Serializable;

public class User implements Serializable {
  
    private static final long serialVersionUID = 1L;
    private String fullName;
    private String email;
    private String mobile;
    private String password;
    
    
    public String getFullName() {
        return fullName;
    }
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getMobile() {
        return mobile;
    }
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
  
 
}