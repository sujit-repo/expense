package com.codescup.expense.app.data;

import java.util.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceUnit;

import org.springframework.stereotype.Component;

import com.codescup.expense.app.entity.User;

@Component
public class BaseDataDAO {

	private EntityManagerFactory emf;
	private EntityManager em;
	
	@PersistenceUnit
	public void setEmf(EntityManagerFactory emf) {
		this.emf = emf;
	}
	
	public EntityManager getEntityManager() {
		this.em = emf.createEntityManager();
		return this.em;
	}
	
	public void saveUser() {
		User user = new User();
		user.setUserId("1234");
		user.setPassword("admin");
		Date dt = new Date();
		user.setLastLogin(dt);
		EntityTransaction t;
		try {
			t = this.em.getTransaction();
			t.begin();
			this.em.persist(user);
			t.commit();
		}catch(Exception e) {
			this.em.close();
			e.printStackTrace();
		}
	}
}
