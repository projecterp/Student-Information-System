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
public class FeeEdit extends HttpServlet {
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
		s = em.createQuery(
				"SELECT s FROM Student s WHERE s.SID='"
						+ request.getParameter("T2") + "'", Student.class)
				.getSingleResult();
		Fee f = new Fee();
		f.setSID(s.getSID());
		if (request.getParameter("T4") != null) {
			f.setPaid1(true);
		}
		if (request.getParameter("T6") != null) {
			f.setPaid2(false);
		}
		f.setFee1(Integer.parseInt(request.getParameter("T3")));
		f.setFee2(Integer.parseInt(request.getParameter("T5")));
		em.getTransaction().begin();
		em.persist(f);
		em.getTransaction().commit();
		em.close();
		System.out.println("done");
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher(
				"/AdminSIS.jsp");
		rd.include(request, response);
		out.println("Fee record added!");
	}
}