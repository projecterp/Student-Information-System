<%@page import="servletdb.Subject"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>
<%@page import="java.util.*"%>
<%@page import="javax.persistence.Query"%>
<%@page import="servletdb.Student"%>
<%@page import="servletdb.Servletdb"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.EntityManager"%>

<link href="adminlogin/styles.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href=https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css
	rel="stylesheet" type="text/css">
<script src="//code.jquery.com/jquery-1.12.3.js"></script>
<script
	src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>

<%!String sid, sname, s1, f1, c1, s2, f2, c2, s3, f3, c3, SID;
	Student st;
	EntityManager em;%>
<%
	try {
		EntityManagerFactory emf = Persistence
				.createEntityManagerFactory("$objectdb/db/SIS.odb");
		em = emf.createEntityManager();
	} catch (Exception e) {
		e.printStackTrace();
	}
	sid = session.getAttribute("id").toString();
	sname = session.getAttribute("name").toString();
	if (sid == null)
		response.sendRedirect("expired.html");
	else
		out.println("Welcome to Administrative Operations");
	ArrayList<Subject> subList=(ArrayList<Subject>)em.createQuery("SELECT c from Subject c ",Subject.class).getResultList();
%>
<html>

<head>
<title>Welcome to Online Student Information System</title>
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
<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>
<body topmargin="0" background="images/background.gif">
	<div>
		&nbsp;
		<table border="0" style="border-collapse: collapse" width="92%"
			id="table1">
			<tr>
				<td height="93" bgcolor="#B7BCC6">
					<p align="center">
						<b><font size="7" face="Arial"> <img border="0"
								src="images/header.jpg" width="1280" height="100"></font></b>
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
						<li class="w3-dropdown-hover w3-hover-orange"><a
							class="w3-hover-orange" href="#">Records<i
								class="fa fa-caret-down"></i></a>
							<div class="w3-dropdown-content w3-white w3-card-4">
								<a href="StudRecord.jsp">Student Record</a> <a
									href="classRecord.jsp">Class Record</a>
							</div></li>
						<li><a href="schedule.jsp">Schedule Allocation </a></li>
						<li><a href="createNews.jsp">Publish News </a></li>
						<li><a href="mail.jsp"> Send Message</a></li>
					</ul>
				</td>
			</tr>
			<tr>

				<td width="96%" height="21" bgcolor="#B7BCC6"><br>
					<p align="center">
						<b><font face="Courier New, Courier, mono">Master
								today, that the world will learn tomorrow.</font></b></td>
			</tr>
		</table>

		<table id="example" class="table table-striped table-bordered"
			cellspacing="0" width="60%" align="center">
			<thead>
				<tr>
					<th>Subject</th>
					<th>Credits</th>

				</tr>
			</thead>
			<tbody>
				<%
					for (Subject sub :subList) {
				%>
				<tr>
					<td><%=sub.getName()%></td>
					<td><%=sub.getCredits()%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
</body>

</html>
