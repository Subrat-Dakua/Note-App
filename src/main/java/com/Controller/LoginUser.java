package com.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.UserDao;
import com.Dto.User;
@WebServlet("/login")
public class LoginUser  extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		UserDao userdao = new UserDao(); 
		User user = userdao.fetchUserByEmailAndPassword(email, password);
		
		HttpSession session = req.getSession();
		
		if(user != null)
		{
			
			session.setAttribute("userId", user.getId());
			resp.sendRedirect("home.jsp");
		}
		else 
		{
			session.setAttribute("wrong", "Invalid Credential");
			resp.sendRedirect("login.jsp");
		}
		
	}
}
