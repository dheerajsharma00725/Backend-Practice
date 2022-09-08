package com.db.databasedemo;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.db.databasedemo.entity.Person;
import com.db.databasedemo.jdbc.PersonJDBCDAO;


@SpringBootApplication
public class DatabaseDemoApplication implements CommandLineRunner{
	
	private Logger logger =LoggerFactory.getLogger(this.getClass());
			
	@Autowired
	PersonJDBCDAO personJDBCDAO;
	
	public static void main(String[] args) {
		
		SpringApplication.run(DatabaseDemoApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		
		logger.info("AllUsers ----> {}",personJDBCDAO.findAll());
		
		logger.info("Person ID: 10001 ----> {}",personJDBCDAO.findById(10001));
		
		logger.info("Person Location: NY ----> {}",personJDBCDAO.findByLocation("NY"));
		
		logger.info("Deleting 10002 ----> No. Of rows deleted {}",personJDBCDAO.deleteById(10002));
		
		logger.info("Inserting 10005 ----> {}",personJDBCDAO.insert(new Person(10005,"Adam","Australia",new Date())));
		//id=10004, name=John, location=Pune, dob=2022-09-08 17:01:10.243295]
		logger.info("Updating 10004 ----> {}",personJDBCDAO.update(new Person(10004,"UpdatedName","NewLocation",new Date())));
	}

}
