package com.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DbConnect;
import com.dao.UserDAO;
import com.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String pass=req.getParameter("password");
		
		//System.out.println(email+" "+pass);
		UserDAO dao=new UserDAO(DbConnect.getConn());
		User u = dao.loginUser(email, pass);
		HttpSession session=req.getSession();
		if(u == null)
		{   
			session.setAttribute("user",u);
			resp.sendRedirect("index.jsp");
			//System.out.println("User is available" + u);
		}else {
			session.setAttribute("invalidMsg","Invalid email & password");
			resp.sendRedirect("login.jsp");
			//System.out.println("User is not available" + u);
		}
	}

}
