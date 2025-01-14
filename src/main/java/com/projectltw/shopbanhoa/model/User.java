package com.projectltw.shopbanhoa.model;

import java.io.Serializable;

public class User implements Serializable {

    private String username;
    private String password;
    private String name;

    public String getUsername(){
        return username;
    }

    public void setUsername(String username){
        this.username = username;
    }

    public String getPassword(){
        return password;

    }
    public void setPassword(String password){
        this.password = password;
    }

    public User(String username, String password, String name){
        this.username = username;
        this.password = password;
        this.name = name;

    }
}
