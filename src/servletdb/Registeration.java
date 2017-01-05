package servletdb;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.*;
import javax.servlet.http.*;

import java.io.*;

@SuppressWarnings("serial")
public class Registeration extends HttpServlet {
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
		int Class;
		String SID, StudentName,Password, Father_Name, DOB, Nationality, Address, City, Country, Phone, Mobile, NIC, Email;
		SID = request.getParameter("T1");
		StudentName = request.getParameter("T2");
		Password = request.getParameter("T3");
		System.out.println(Password);
		Class = Integer.parseInt(request.getParameter("T4"));
		Father_Name = request.getParameter("T5");
		DOB = request.getParameter("T6");
		Nationality = request.getParameter("T7");
		Address = request.getParameter("T8");
		City = request.getParameter("T9");
		Country = request.getParameter("T10");
		Phone = request.getParameter("T11");
		Mobile = request.getParameter("T12");
		NIC = request.getParameter("T13");
		Email = request.getParameter("T14");
		Student std = new Student();
		std.setAddress(Address);
		std.setCity(City);
		std.setClass(Class);
		std.setCountry(Country);
		std.setDOB(DOB);
		std.setEmail(Email);
		std.setCountry(Country);
		std.setFather_Name(Father_Name);
		std.setMobile(Mobile);
		std.setNationality(Nationality);
		std.setNIC(NIC);
		std.setPassword(Password);
		std.setPhone(Phone);
		std.setSID(SID);
		std.setStudentName(StudentName);
		System.out.println(std.getPassword());
		em.getTransaction().begin();
		em.persist(std);
		em.getTransaction().commit();
		em.close();
		System.out.println("done");
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher(
				"/AdminSIS.jsp");
		rd.include(request, response);
		out.println("<div class=\"isa_success\">Successfully Registered Student!</div>");
	}
	// Clean up resources
	public void destroy() {
	}
}