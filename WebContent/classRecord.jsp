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
%>
<html>

<head>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
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

<body topmargin="0" background="images/background.gif">

	<div align="center">
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
						<a href="logout.jsp"><b><font face="Arial" size="1">Logout</font></b>
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

				<td width="96%" height="21" bgcolor="#B7BCC6">
					<p align="center">
						<b><font face="Courier New, Courier, mono">Master
								today, that the world will learn tomorrow.</font></b>
				</td>
			</tr>
			<tr>
				<td width="96%" height="139" bgcolor="#B7BCC6">

					<form method="POST" action="cRec.jsp">

						<p align="center">
							Subject Name: <input type="text" name="T1" size="20">
						</p>
						<p align="center">
							Class: <select class="selectpicker" data-style="btn-primary"
								id="select" name="T2">
								<option value="1">I</option>
								<option value="2">II</option>
								<option value="3">III</option>
								<option value="4">IV</option>
								<option value="5">V</option>
								<option value="6">VI</option>
								<option value="7">VII</option>
								<option value="8">VIII</option>
								<option value="9">IX</option>
								<option value="10">X</option>
								<option value="11">XI</option>
								<option value="12">XII</option>
							</select>
						</p>
						<p align="center">
							Month: <select class="selectpicker" data-style="btn-primary"
								id="select" name="T3">
								<option value="Annual">Annual</option>
								<option value="January">January</option>
								<option value="February">February</option>
								<option value="March">March</option>
								<option value="April">April</option>
								<option value="May">May</option>
								<option value="June">June</option>
								<option value="July">July</option>
								<option value="August">August</option>
								<option value="September">September</option>
								<option value="October">October</option>
								<option value="November">November</option>
								<option value="December">December</option>
							</select>
						</p>
						<p align="center">

							<input type="submit" value="Submit" name="B1"><input
								type="reset" value="Reset" name="B2">
						</p>
					</form>
					<p>&nbsp;
				</td>
			</tr>

		</table>
	</div>
</body>

</html>
