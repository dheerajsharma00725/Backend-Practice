package com.jpa.hibernate.demo.repository;

import javax.persistence.EntityManager;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jpa.hibernate.demo.entity.Course;

@Repository
@Transactional
public class CourseRepository {
	
	@Autowired
	EntityManager em;
	private Logger logger = LoggerFactory.getLogger(CourseRepository.class);
	
	public Course findById(Long id) {
		 return em.find(Course.class, id);	 
	}
	
	public void deleteById(Long id) {
		Course course = findById(id);
		em.remove(course);
	}
	public Course save(Course course) {
		if(course.getId()== 0L) {
			em.persist(course);
		}else {
			em.merge(course);
		}
		return course;
	}
	
	public void playWithEntityManager() {
		Course course1 = new Course("Web Services");
		em.persist(course1);
		Course course2 = new Course("Angular JS");
		em.persist(course2);
		em.flush();
		
//		em.detach(course2); //To untrack few entities
		em.clear(); //To clear everything out
		
		course1.setName("Updated Web Services");
		em.flush();		
		
		course2.setName("Updated Angular");
		em.flush();
	}
}
