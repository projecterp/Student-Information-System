<%@page import="servletdb.Student"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.EntityManager"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="error_Page.jsp" %>
<%!
	String sid,sname;
%>
<% 
	sid=(String)session.getAttribute("id");
	sname=(String)session.getAttribute("name");
	if(sid==null)
	response.sendRedirect("expired.html");
	else
try{
    	sid=request.getParameter("T1");
    	EntityManager em;
    	EntityManagerFactory emf =Persistence.createEntityManagerFactory("$objectdb/db/SIS.odb");
    	em = emf.createEntityManager();
    	Student std=em.find(Student.class,sid);
    	em.getTransaction().begin();
    	em.remove(std);
    	em.getTransaction().commit();
	out.println("Student has been Deleted Successfully!");
}
	catch(Exception e){
		out.println("Exception has been Occured"+e.getMessage());
	}
 %>
<html>
<head>
<title>Redirecting You to Main Page</title>
<meta http-equiv="refresh"  content="3 ; url=AdminSIS.jsp">
</head>
<body>

<p><strong><font color="#999999" face="Courier New, Courier, mono">Redirecting 
you to Home Page</font></strong> </p>
<p align="center">
<img border="0" src="images/redirect.JPG" width="200" height="250"></p>
<p>&nbsp;</p>

</body>
</html>
