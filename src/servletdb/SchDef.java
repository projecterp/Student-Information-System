package servletdb;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class SchDef extends HttpServlet {
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

		Subject sub = new Subject();
		Schedule s = new Schedule();

		sub = em.createQuery(
				"SELECT s FROM Subject s WHERE s.Name='"
						+ request.getParameter("T1") + "'", Subject.class)
				.getSingleResult();

		s.setId(SHAclass.generateHash(sub.getName()
				+ request.getParameter("T2")));
		s.setSubID(sub.getName());
		s.setClass(Integer.parseInt(request.getParameter("T2")));
		Map<String, String> map = s.getDayTime();
		map.put("Monday", request.getParameter("T3"));
		map.put("Tuesday", request.getParameter("T4"));
		map.put("Wednesday", request.getParameter("T5"));
		map.put("Thursday", request.getParameter("T6"));
		map.put("Friday", request.getParameter("T7"));
		map.put("Saturday", request.getParameter("T8"));
		s.setDayTime(map);
		em.getTransaction().begin();
		em.persist(s);
		em.getTransaction().commit();
		em.close();
		System.out.println("done");
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher(
				"/AdminSIS.jsp");
		rd.include(request, response);
		out.println("<div class=\"isa_success\">Schedule for subject "
				+ sub.getName() + " created!!</div>");
	}
}