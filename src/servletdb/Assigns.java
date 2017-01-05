package servletdb;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Assigns extends HttpServlet {
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
		Takes t = new Takes();
		Grade g =new Grade();
		Attendance atd=new Attendance();
		s = em.createQuery(
				"SELECT s FROM Student s WHERE s.SID='"
						+ request.getParameter("T2") + "'", Student.class)
				.getSingleResult();
		System.out.println(s.getStudentName());
		sub = em.createQuery(
				"SELECT s FROM Subject s WHERE s.Name='"
						+ request.getParameter("T1") + "'", Subject.class)
				.getSingleResult();
		System.out.println(sub.getName());
		g.setID(SHAclass.generateHash(s.getSID()+sub.getName()));
		g.setSID(s.getSID());
		g.setSubID(sub.getId());
		g.setGrades(new HashMap<String, Integer>());
		atd.setID(SHAclass.generateHash(s.getSID()+sub.getName()));
		atd.setSID(s.getSID());
		atd.setSubID(sub.getId());
        t.setAttendance(atd.getSID());
		t.setSid(s.getSID());
		t.setGrade(g.getId());
		t.setCredits(sub.getCredits());
		t.setSubID(sub.getId());
		em.getTransaction().begin();
		em.persist(t);
		em.persist(g);
		em.persist(atd);
		em.getTransaction().commit();
		em.close();
		System.out.println("done");
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher(
				"/AdminSIS.jsp");
		rd.include(request, response);
		out.println("Successfully Assigned Subject");
	}
}
