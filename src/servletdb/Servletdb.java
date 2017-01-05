package servletdb;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Servletdb extends HttpServlet {
	EntityManager em;
	public static EntityManagerFactory emf;
	static final private String CONTENT_TYPE = "text/html";

	// Initialize global variables
	public void init() throws ServletException {
	}

	// Process the HTTP Get request
	public void deleteTable(String table,EntityManager em){
		em.getTransaction().begin();
		em.createQuery("DELETE FROM "+table).executeUpdate();
		em.getTransaction().commit();
	}
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType(CONTENT_TYPE);
		PrintWriter out = response.getWriter();
		 emf = Persistence
				.createEntityManagerFactory("$objectdb/db/SIS.odb");
		em = emf.createEntityManager();
	/*
        deleteTable("Student", em);
        deleteTable("Subject", em);
        deleteTable("Grade", em);
        deleteTable("Attendance", em);
        deleteTable("Takes", em);
    */    
		String ID = request.getParameter("lid");
		String pass = request.getParameter("pwd");
		System.out.println("Database Loaded" + ID + pass);
		// Setup the connection with the DB
		// String id="admin";
		// String passwd="admin";
		// String name="admin";
		Student std = em.find(Student.class, ID);
		em.close();
		if ((ID.equalsIgnoreCase("admin")) && (pass.equalsIgnoreCase("admin"))) {
			System.out.println("in");
			HttpSession session = request.getSession();
			System.out.println("broohhhh");
			session.setAttribute("id", "admin");
			session.setAttribute("name", "admin");
			// out.println("<input type='hidden' name=id value='"+lid+"'>");
			response.sendRedirect("AdminSIS.jsp");
		} else if (std != null) {
			String id = std.getSID();
			System.out.println(id + " "+ ID);
			String passwd = std.getPassword();
			System.out.println(passwd + " "+ pass);
			String name = std.getStudentName();
			if (id.equals(ID) && (passwd.equals(pass))) {
				HttpSession session = request.getSession(true);
				session.setAttribute("id", ID);
				session.setAttribute("name", name);
				// out.println("<input type='hidden' name=id value='"+lid+"'>");
				response.sendRedirect("Home.jsp");
			} else
				response.sendRedirect("login.jsp");
		}
		else{
			response.sendRedirect("err_login.jsp");
		}
	}

	// Clean up resources
	public void destroy() {
	}
}