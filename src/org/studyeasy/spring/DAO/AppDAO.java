package org.studyeasy.spring.DAO;

import java.util.List;

import org.studyeasy.spring.model.User;

public interface AppDAO {

	public List<User> users();
	public void addUser(User user);
}
