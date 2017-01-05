<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.org.apache.regexp.internal.recompile"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="servletdb.*"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.EntityManager"%>

<%!float v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12;

	String sid;
	String id;
	String sname;
	EntityManager em;%>
<%
	sid = (String) session.getAttribute("id");
	sname = (String) session.getAttribute("name");
	float cgpa = 0;
	String month = "";
	ArrayList<Takes> resultList = new ArrayList<Takes>();
	if (sid == null)
		response.sendRedirect("http://localhost:8080/expired.html");
	else {
		try {
	EntityManagerFactory emf = Persistence
			.createEntityManagerFactory("$objectdb/db/SIS.odb");
	em = emf.createEntityManager();
	id=request.getParameter("T1");
    
	resultList = (ArrayList<Takes>) em.createQuery(
			"SELECT c FROM Takes c WHERE c.sid='"+id+"'",Takes.class).getResultList();
	} 
    catch (Exception e) {
	e.printStackTrace();
		}
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.s3/css/font-awesome.min.css">
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.3.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	});
</script>
<style type=text/css>
span {
	COLOR: brown;
	FONT-FAMILY: Arial;
	FONT-SIZE: 10pt;
	FONT-WEIGHT: bold;
	POSITION: absolute;
	TOP: -50px;
	VISIBILITY: visible
}

BODY {
	SCROLLBAR-HIGHLIGHT-COLOR: gray;
	SCROLLBAR-SHADOW-COLOR: gray;
	SCROLLBAR-3DLIGHT-COLOR: gray;
	SCROLLBAR-ARROW-COLOR: gray;
	SCROLLBAR-TRACK-COLOR: gray;
	SCROLLBAR-DARKSHADOW-COLOR: gray;
}
</style>

</head>

<body topmargin="0" background="images/background.gif">
	<div align="center">
		&nbsp;
		<table border="0" style="border-collapse: collapse" width="92%"
			id="table1">
			<tr>
				<td height="93" bgcolor="#B7BCC6">
					<p align="center">
						<b><font size="7" face="Arial"> <img border="0"
								src="images/top.JPG" width="698" height="92"></font></b>
				</td>
			</tr>
			<tr>
				<td height="22" valign="top" bgcolor="#B7BCC6"
					style="border-left-width: 1px; border-right-width: 1px; border-top-style: solid; border-top-width: 1px; border-bottom-width: 1px;">
					<p align="right">
						<a href="logout.jsp"><b><font face="Arial" size="1">Logout</font></b></a>
				</td>
			</tr>
			<tr>
				<td vAlign="top" align="right" height="0">
					<p align="left">
					<ul class="w3-navbar w3-light-grey">
						<li><a href="AdminSIS.jsp">Home</a></li>
						<li class="w3-dropdown-hover w3-hover-orange"><a
							class="w3-hover-orange" href="#">Student<i
								class="fa fa-caret-down"></i></a>
							<div class="w3-dropdown-content w3-white w3-card-4">
								<a href="registeration.jsp">Add student</a> <a href="Delete.jsp">Delete
									Student</a>
							</div></li>
						<li class="w3-dropdown-hover w3-hover-orange"><a
							class="w3-hover-orange" href="#">Subject<i
								class="fa fa-caret-down"></i></a>
							<div class="w3-dropdown-content w3-white w3-card-4">
								<a href="SubAdd.jsp">Add Subject</a> <a href="SubDel.jsp">Delete
									Subject</a> <a href="Assign.jsp">Assign Subject</a>
							</div></li>
						<li class="w3-dropdown-hover w3-hover-orange"><a
							class="w3-hover-orange" href="#">Fee<i
								class="fa fa-caret-down"></i></a>
							<div class="w3-dropdown-content w3-white w3-card-4">
								<a href="FeeRec.jsp">Fee record</a> <a href="#">Update</a>
							</div></li>
						<li><a href="GradeEdit.jsp">Add Grade</a></li>
						<li><a href="AttendEdit.jsp">Add Attendance </a></li>
					</ul>
				</td>
			</tr>
			<tr>

				<td width="96%" height="21" bgcolor="#B7BCC6">
					<p align="center">
						<b><font face="Courier New, Courier, mono">Master
								today, that the world will learn tomorrow.</font></b>
				</td>
			</tr>
		</table>
		<div>
			<%
				Student std = em.createQuery("SELECT c from Student c where c.SID='"+id+"'",Student.class).getSingleResult();
			    System.out.println(std);
			%>
			<table id="example" class="table table-striped table-bordered"
				cellspacing="0" width="100%">
				<thead>
					<tr>
						<td>SID:</td>
						<td><%=std.getSID()%></td>
					</tr>
					<tr>
						<td>Name:</td>
						<td><%=std.getStudentName()%></td>
					</tr>
					<tr>
						<td>Class:</td>
						<td><%=std.getclass()%></td>
					</tr>

					<tr>
						<td>Email:</td>
						<td><%=std.getEmail()%></td>
					</tr>

					<tr>

						<td bgcolor="#B7BCC6" colspan="5" align="center"><b> <font
								face="Arial">Result of : <%
 	out.println(sname + " : " + sid);
 %></font></b></td>
					</tr>

					<tr>
						<th>Subject</th>
						<th>Attendance</th>
						<th>Total</th>
						<th>cr.Hr.</th>
						<th>Obtained</th>
					</tr>
				</thead>
				<tbody>
					<%
						month = request.getParameter("T3");
						int total = 0, count = 0, max = 25;
						int total_temp = 12, pres_temp = 0;
						for (Takes t : resultList) {
							System.out.println(t.getGrade() + "\n" + t.getSid() + "\n"
									+ t.getSubID());
							Attendance atd = new Attendance();
							atd = em.find(Attendance.class, t.getAttendance());
							Grade g = em.find(Grade.class, t.getGrade());
							float obtained = 0;
							Iterator<String> itr = g.getGrades().keySet().iterator();
							while (itr.hasNext()) {
								String key = itr.next();
								try{
								obtained += g.getGrades().get(key).intValue();
								}
								catch(Exception e){}
								total += t.getCredits() * obtained;
								count += t.getCredits();
								try{
								pres_temp += atd.getAttendance().get(key);
								}
								catch(Exception e){pres_temp+=0;}

							}
					%>

					<tr>
						<td><%=em.find(Subject.class, t.getSubID()).getName()%></td>
						<td>
							<%
								out.println(pres_temp + "/" + total_temp);
							%>
						</td>
						<td><%=max%></td>
						<td><%=t.getCredits()%></td>
						<td><%=obtained%></td>
					</tr>
					<%
						}
						out.print(total);
						out.print(max);
						if(count*max!=0)
							   cgpa = (total * 100) / (count * max);
							else
								cgpa=0;
					%>
					<tr>
						<td width="36%">&nbsp;</td>
						<td width="44%" colspan="3">
							<p align="center">
								<b><font face="Arial" size="5">Percentage</font></b>
						</td>
						<td width="15%"><%=cgpa%></td>
					</tr>
				</tbody>

			</table>
		</div>
	</div>

</body>
</html>