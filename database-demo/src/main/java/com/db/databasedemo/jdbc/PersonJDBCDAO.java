package com.db.databasedemo.jdbc;

import java.sql.Timestamp;
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
	
	public Person findById(int id){
		return jdbcTemplate.queryForObject("select * from person where id = ?",
				new Object[] { id },
				new BeanPropertyRowMapper<Person>(Person.class));
		
	}
	public int deleteById(int id){
		return jdbcTemplate.update("delete from person where id = ?",
				new Object[] { id });
		
	}
	public Person findByLocation(String location){
		return jdbcTemplate.queryForObject("select * from person where location = ?",
				new Object[] { location },
				new BeanPropertyRowMapper<Person>(Person.class));
		
	}
	
	public int insert(Person person){
		return jdbcTemplate.update
				("insert into person(id,name,location,dob) values(?,?,?,?)",
				new Object[] { person.getId(),person.getName(),person.getLocation(),
						new Timestamp(person.getDob().getTime())}
				);		
	}
	
	public int update(Person person){
		return jdbcTemplate.update
				("update person set name = ?, location =? , dob =? "
						+ " where id = ?",
				new Object[] {person.getName(),person.getLocation(),
						new Timestamp(person.getDob().getTime()),person.getId()}
				);
		
	}
}
