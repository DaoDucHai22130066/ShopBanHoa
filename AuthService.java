package vn.edu.hcmuaf.fit.lab4.services;

import vn.edu.hcmuaf.fit.lab4.dao.UserDao;
import vn.edu.hcmuaf.fit.lab4.dao.model.User;

public class AuthService {

    public boolean checkLogin(String uname, String pass){
        UserDao udao = new UserDao();
        User u = udao.findUsername(uname);
        if(u==null) return false;
        return pass.equals(u.getPassword());

    }
}
