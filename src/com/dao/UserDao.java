package com.dao;

import com.po.Users;

public class UserDao {
	
	public boolean usersLogin(Users u){
		if("admin".equals(u.getUsername())&&"admin".equals(u.getPassword())){
			return true;
		}else{
			return false;
		}
	}
}
