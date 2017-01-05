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
public class AttendAdd extends HttpServlet {
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
		Subject sub = new Subject();
		Attendance g = new Attendance();
		s = em.createQuery(
				"SELECT s FROM Student s WHERE s.SID='"
						+ request.getParameter("T2") + "'", Student.class)
				.getSingleResult();
		sub = em.createQuery(
				"SELECT s FROM Subject s WHERE s.Name='"
						+ request.getParameter("T1") + "'", Subject.class)
				.getSingleResult();
		Takes t = new Takes();
		t = em.createQuery(
				"SELECT t FROM Takes t WHERE t.sid='" + s.getSID() + "'"
						+ " AND t.subID='" +sub.getId()+ "'", Takes.class)
				.getSingleResult();
        
		g.setID(SHAclass.generateHash(s.getSID()+sub.getName()));
		g.setSID(s.getSID());
		g.setSubID(sub.getId());
		Map<String,Integer> map= g.getAttendance();
		map.put(request.getParameter("T3"),
				Integer.getInteger(request.getParameter("T4")));
	    g.setAttendance(map);
		t.setGrade(g.getId());
		em.getTransaction().begin();
		em.persist(g);
		em.getTransaction().commit();
		em.getTransaction().begin();
		em.persist(t);
		em.getTransaction().commit();
		em.close();
		System.out.println("done");
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher(
				"/AdminSIS.jsp");
		rd.include(request, response);
		out.println("<div class=\"isa_success\">Attendance Record Added!</div>");
	}
}