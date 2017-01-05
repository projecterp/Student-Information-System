<%@page import="servletdb.Student"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.EntityManager"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="error_Page.jsp" %>

<%!
	String SID,StudentName,Password,Father_Name,DOB,Nationality,Address,City,Country,Phone,Mobile,NIC,Email;
	String sid,sname;
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;	
%>

 <% 
String sid=(String)session.getAttribute("id");
String sname=(String)session.getAttribute("name");
	if(sid==null)
	response.sendRedirect("expired.html");
	else
try{
	EntityManager em;
	EntityManagerFactory emf =Persistence.createEntityManagerFactory("$objectdb/db/SIS.odb");
	em = emf.createEntityManager();
    Student std=em.find(Student.class,sid);
    SID=request.getParameter("T1");
    StudentName=request.getParameter("T2");
    Password=request.getParameter("T3");
    Father_Name=request.getParameter("T4");
    DOB=request.getParameter("T5");
    Nationality=request.getParameter("T6");
    Address=request.getParameter("T7");
    City=request.getParameter("T8");
    Country=request.getParameter("T9");
    Phone=request.getParameter("T10");
    Mobile=request.getParameter("T11");
    NIC=request.getParameter("T12");
    Email=request.getParameter("T13");
    std.setAddress(Address);
	std.setCity(City);
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
    em.getTransaction().begin();
    em.persist(std);
    em.getTransaction().commit();

out.println("Updated Record Successfully!");
response.sendRedirect("Profile.jsp");
/*String Query="UPDATE Student SET SID='"+SID+"',SName='"+StudentName+"',Password='"+Father_Name+"',DOB='"+DOB+"',Nationality='"+Nationality+"',Address='"+Address+"',City='"+City+"',Country='"+Country+"',Phone='"+Phone+"',Mobile='"+Mobile+"',NIC='"+NIC+"',Email='"+Email+"' WHERE SID='"+SID+"'";

int chk=stmt.executeUpdate(Query);

if(chk==1)
out.println("Updated Record Successfully!");
else
out.println("Errors Occured During Updating Record ");
*/
}
catch(Exception e){
	out.println("Exception had been occured -- >  "+e.getMessage());
	out.println(e);
}
 %>
<html>
<head>
<title>Updating Student Record</title>
</head>
<body>

</body>
</html>
