package com.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.Dto.User;

public class UserDao {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("subrat");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();
	
	public User fetchUserById(int id) {
		return em.find(User.class, id);
	}
	
	
	public User fetchUserByEmailAndPassword(String email,String password) {
		
		Query query = em.createQuery("select u from User u where u.email=?1 and u.password=?2 ");
		query.setParameter(1, email);
		query.setParameter(2, password);
		
		@SuppressWarnings("unchecked")
		List<User> list = query.getResultList();
		
		if(list.isEmpty()) {
			return null;
		}else {
			return list.get(0);
		}
		
	}
	
	
	public void saveAndUpdateUser(User user) {
		et.begin();
		em.persist(user);
		et.commit();
	}

}
