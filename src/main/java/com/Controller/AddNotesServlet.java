package com.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.UserDao;
import com.Dto.Notes;
import com.Dto.User;
@WebServlet("/addnote")
public class AddNotesServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String tittle = req.getParameter("tittle");
		String description = req.getParameter("description");
		
		Notes note = new Notes();
		note.setTittle(tittle);
		note.setDescription(description);
		
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("userObj");
		
		List<Notes> list= new ArrayList<Notes>();
		list.add(note);
		
		user.setNote(list);
		note.setUser(user);
		
		UserDao dao = new UserDao();
		dao.saveAndUpdateUser(user);
		
		session.setAttribute("success", "Notes Updated Successfully");
		resp.sendRedirect("home.jsp");
	}
	

}
