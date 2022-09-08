package com.db.databasedemo.jdbc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.db.databasedemo.entity.Person;

@Repository
public class PersonJDBCDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	//select * from person
	public List<Person> findAll(){
		return jdbcTemplate.query("select * from person",
				new BeanPropertyRowMapper(Person.class));
		
	}
}
