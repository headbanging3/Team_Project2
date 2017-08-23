package com.acorn.shoopse.users.dao;

import com.acorn.shoopse.users.dto.UsersDto;

public interface UsersDao {
	public void usersSignup(UsersDto dto);
	public String findId(UsersDto dto);
	public String findPwd(UsersDto dto);
	public String isOverlab(String id);
	public boolean isValid(UsersDto dto);
	public UsersDto getData(String id);
	public void delete(int num);
	public void update(UsersDto dto);
}


