package com.jpa.hibernate.demo.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.DirtiesContext;

import com.jpa.hibernate.demo.DemoApplication;
import com.jpa.hibernate.demo.entity.Course;

@SpringBootTest(classes=DemoApplication.class)
public class CourseRepositoryTest {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	CourseRepository cr;
	@Test
	public void findByIdTest(){
		logger.info("Test is working");
		Course course =cr.findById(10001L);
		assertEquals("JPA", course.getName());
	}
	
	@Test
	@DirtiesContext
	public void deleteByIdTest(){
		logger.info("Delete Test is working");
		cr.deleteById(10002L);
		assertNull(cr.findById(10002L));
	}
	
	@Test
	@DirtiesContext
	public void saveTest() {
		logger.info("Save Test is working");
		//getting Course
		Course course =cr.findById(10001L);
		assertEquals("JPA", course.getName());
		//Updating Details
		course.setName("Updated Name");
		cr.save(course);
		
		//Checking the value
		Course course1 =cr.findById(10001L);
		assertEquals("Updated Name", course1.getName());
	}
}
