package com.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.Dto.Notes;
import com.Dto.User;

public class NotesDao {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("subrat");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();
	
	public Notes fetchNotesById(int id) {
		return em.find(Notes.class,id);
	}
	public void deleteNotesById(int id) {
		Notes notes = em.find(Notes.class, id);
		User user = notes.getUser();
		List<Notes> list = user.getNote();
		for(Notes n : list) {
			if(n.getId()== id) {
				list.remove(n);
				break;
			}
		}
		et.begin();
		em.merge(user);
		em.remove(notes);
		et.commit();
	}

}
