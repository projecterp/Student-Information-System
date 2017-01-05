<%@page import="servletdb.*"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.EntityManager"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage="error_Page.jsp"%>
<%!String sid, sname, id;%>
<%
	sid = (String) session.getAttribute("id");
	sname = (String) session.getAttribute("name");
	if (sid == null)
		response.sendRedirect("expired.html");
	else
		try {
			id = request.getParameter("T1");
			EntityManager em;
			EntityManagerFactory emf = Persistence
					.createEntityManagerFactory("$objectdb/db/SIS.odb");
			em = emf.createEntityManager();
			Subject s = em
					.createQuery(
							"SELECT s FROM Subject s WHERE s.Name='"
									+ id + "'", Subject.class)
					.getSingleResult();
			em.getTransaction().begin();
			em.remove(s);
			em.getTransaction().commit();
			out.println("Subject has been Deleted Successfully!");
		} catch (Exception e) {
			out.println("Exception has been Occured" + e.getMessage());
		}
%>
<html>
<head>
<title>Redirecting You to Main Page</title>
<meta http-equiv="refresh" content="3 ; url=AdminSIS.jsp">
</head>
<body>

	<p>
		<strong><font color="#999999"
			face="Courier New, Courier, mono">Redirecting you to Home Page</font></strong>
	</p>
	<p align="center">
		<img border="0" src="images/redirect.JPG" width="200" height="250">
	</p>
	<p>&nbsp;</p>

</body>
</html>
