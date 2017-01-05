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

@SuppressWarnings("serial")
public class sendMsg extends HttpServlet {
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

		Student s = new Student();
		Message m = new Message();
		s = em.createQuery(
				"SELECT s FROM Student s WHERE s.SID='"
						+ request.getParameter("T1")+ "'", Student.class)
				.getSingleResult();
		m.setTo(s.getSID());
		m.setSubject(request.getParameter("T2"));
		m.setMessage(request.getParameter("T3"));
		em.getTransaction().begin();
		em.persist(m);
		em.getTransaction().commit();
		em.close();
		System.out.println("done");
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher(
				"/AdminSIS.jsp");
		rd.include(request, response);
		out.println("<div class=\"isa_success\">Message successfully sent to "
				+ s.getStudentName() + "!</div>");
	}
}