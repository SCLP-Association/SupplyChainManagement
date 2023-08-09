package com.lifecartmain.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.lifecartmain.models.Admin;
import com.lifecartmain.models.User;

public interface AdminRepo extends JpaRepository<Admin, String>{
	@Query("select count(*) from Admin where username=?1 and password=?2")
	public int AdminExists(String username, String password);
	
//	@Query("select isAdmin from User where username=?1")
//	public boolean isAdmin(String username);
}
