package com.caveofprogramming.spring.web.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component("usersDao")
public class UsersDao {

	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}


	@Transactional
	public boolean create(User user) {

		BeanPropertySqlParameterSource param = new BeanPropertySqlParameterSource(user);
		
		jdbc.update("insert into users (username, password, email, enabled) values (:username, :password, :email, :enabled)", param);

		return jdbc.update("insert into authorities (username, authority) values (:username, :authority)", param) == 1;

	}

}
