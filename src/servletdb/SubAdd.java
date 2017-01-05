package servletdb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SubAdd extends HttpServlet {
	static final private String CONTENT_TYPE = "text/html";
	EntityManager em;

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		EntityManagerFactory emf = Persistence
				.createEntityManagerFactory("$objectdb/db/SIS.odb");
		em = emf.createEntityManager();
		System.out.println(em);
		System.out.println("Database Loaded");
		response.setContentType(CONTENT_TYPE);
		PrintWriter out = response.getWriter();
		String Name;
		int credits;
		Subject s = new Subject();
		Name = request.getParameter("T1");
		s.setName(Name);
		s.setId(SHAclass.generateHash(Name));
		credits = Integer.parseInt(request.getParameter("T2"));
		s.setCredits(credits);
		em.getTransaction().begin();
		em.persist(s);
		em.getTransaction().commit();
		em.close();
		System.out.println("done");
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher(
				"/AdminSIS.jsp");
		rd.include(request, response);
		out.println("<div class=\"isa_success\">Successfully Added Subject!</div>");
	}
}
