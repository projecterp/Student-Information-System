<%@page import="servletdb.Const "%>
<%@page import="servletdb.Schedule"%>
<%@page import="java.util.Iterator"%>
<%@page import="servletdb.Student"%>
<%@page import="servletdb.Subject"%>
<%@page import="servletdb.Takes"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.EntityManager"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage="errorPage.jsp"%>
<%!Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
	String sid, sname;%>

<%
	ArrayList<Takes> resultList = new ArrayList<Takes>();
	sid = (String) session.getAttribute("id");
	sname = (String) session.getAttribute("name");
	EntityManager em;
	if (sid == null)
		response.sendRedirect("http://localhost:8080/expired.html");
	try {
		EntityManagerFactory emf = Persistence
				.createEntityManagerFactory("$objectdb/db/SIS.odb");
		em = emf.createEntityManager();
		resultList = (ArrayList<Takes>) em.createQuery(
				"SELECT c FROM Takes c WHERE c.sid='" + sid + "'",
				Takes.class).getResultList();
	} catch (Exception e) {
		e.printStackTrace();
		em = null;
	}

	/*	else
	 try{
	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 conn=DriverManager.getConnection("jdbc:odbc:sis");
	 st=conn.createStatement();
	 rs=st.executeQuery("SELECT * FROM TimeTable");
	 }
	 catch(Exception e){
	 out.println(e);
	 }
	 */
%>
<html>

<head>
<title>
	<%
		out.println("Welcome user:" + sname + "---------------- Roll No. "
				+ sid);
	%>
</title>
<script language="JavaScript" type="text/JavaScript">
<!--
	function MM_swapImgRestore() { //v3.0
		var i, x, a = document.MM_sr;
		for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++)
			x.src = x.oSrc;
	}

	function MM_preloadImages() { //v3.0
		var d = document;
		if (d.images) {
			if (!d.MM_p)
				d.MM_p = new Array();
			var i, j = d.MM_p.length, a = MM_preloadImages.arguments;
			for (i = 0; i < a.length; i++)
				if (a[i].indexOf("#") != 0) {
					d.MM_p[j] = new Image;
					d.MM_p[j++].src = a[i];
				}
		}
	}

	function MM_findObj(n, d) { //v4.01
		var p, i, x;
		if (!d)
			d = document;
		if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
			d = parent.frames[n.substring(p + 1)].document;
			n = n.substring(0, p);
		}
		if (!(x = d[n]) && d.all)
			x = d.all[n];
		for (i = 0; !x && i < d.forms.length; i++)
			x = d.forms[i][n];
		for (i = 0; !x && d.layers && i < d.layers.length; i++)
			x = MM_findObj(n, d.layers[i].document);
		if (!x && d.getElementById)
			x = d.getElementById(n);
		return x;
	}

	function MM_swapImage() { //v3.0
		var i, j = 0, x, a = MM_swapImage.arguments;
		document.MM_sr = new Array;
		for (i = 0; i < (a.length - 2); i += 3)
			if ((x = MM_findObj(a[i])) != null) {
				document.MM_sr[j++] = x;
				if (!x.oSrc)
					x.oSrc = x.src;
				x.src = a[i + 2];
			}
	}
//-->
</script>
<STYLE type=text/css>
.spanstyle {
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
	SCROLLBAR-DARKSHADOW-COLOR: gray
}
</STYLE>
</head>

<body
	onLoad="MM_preloadImages('images/time1.jpg','images/Fee1.jpg','images/lib1.jpg','/images/Home1.jpg')"
	background="images/background.gif">
	<div align="center">
		&nbsp;
		<table border="0" style="border-collapse: collapse" width="92%"
			id="table1">
			<tr>
				<td colspan="3" height="93" bgcolor="#B7BCC6">
					<p align="center">
						<b><font size="7" face="Arial"> <img border="0"
								src="images/header.jpg" width="698" height="92"></font></b>
				</td>
			</tr>
			<tr>
				<td colspan="3" height="22" valign="top" bgcolor="#B7BCC6"
					style="border-left-width: 1px; border-right-width: 1px; border-top-style: solid; border-top-width: 1px; border-bottom-width: 1px">
					<p align="right">
						<b><font face="Arial" size="1"> <a
								href="MsgReceive.jsp">&nbsp;Inbox()</a> <a href="MsgSend.jsp">Compose
									Message</a>&nbsp; <a href="login.jsp"> Logout</a>&nbsp;&nbsp;
						</font></b>
				</td>
			</tr>
			<tr>
				<td colspan="3" height="0" valign="top" align="right">
					<div align="center">

						<table id="table2" style="BORDER-COLLAPSE: collapse" width="100%"
							border="0">
							<tr>
								<td vAlign="top" align="right" height="0"><div align="left">
										<a href="Home.jsp" onMouseOut="MM_swapImgRestore()"
											onMouseOver="MM_swapImage('Image8','','/images/Home1.jpg',1)"><img
											src="images/Home.jpg" name="Image8" width="100" height="33"
											border="0"></a><a href="Attendence.jsp"><img
											src="images/attendance.jpg" name="attendance" width="100"
											height="33" border="0" id="attendance"></a><a
											href="Profile.jsp"><img src="images/profile.jpg"
											name="profile" width="100" height="33" border="0"></a><a
											href="Result.jsp"><img src="images/result.jpg"
											name="result" width="100" height="33" border="0"></a><a
											href="TimeTable.jsp" onMouseOut="MM_swapImgRestore()"
											onMouseOver="MM_swapImage('timetable','','images/time1.jpg',1)"><img
											src="images/time.jpg" name="timetable" width="100"
											height="33" border="0"></a><a href="Fee.jsp"
											onMouseOut="MM_swapImgRestore()"
											onMouseOver="MM_swapImage('fee','','images/Fee1.jpg',1)"><img
											src="images/Fee.jpg" name="fee" width="100" height="33"
											border="0"></a><a href="#" onMouseOut="MM_swapImgRestore()"
											onMouseOver="MM_swapImage('library','','images/lib1.jpg',1)"><img
											src="images/lib.jpg" name="library" width="100" height="33"
											border="0"></a>
									</div></td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
			<tr>

				<td width="96%" height="21" bgcolor="#B7BCC6" colspan="3">
					<p align="center">
						<b><font face="Courier New, Courier, mono">Master
								today, that the world will learn tomorrow.</font></b>
				</td>
			</tr>
			<tr>
				<td width="26%" height="144" valign="top"
					style="border-left-style: solid; border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px; border-bottom-style: solid">
					<br> <b><font face="Arial">Time Table</font></b>
					<p>
						<b> </b>
				</td>
				<td height="144" width="53%" valign="top"
					style="border-left-style: dashed; border-left-width: 1px; border-right-style: dashed; border-right-width: 1px; border-bottom-style: dashed; border-bottom-width: 1px">
					<p>
						<img border="0" src="images/time.png" width="48" height="48">
					</p>
					<table border="1" style="border-collapse: collapse" width="100%"
						id="table3">
						<tr>
							<td bgcolor="#B7BCC6" colspan="4" align="center"><b> <font
									face="Arial">Time Table</font></b></td>
						</tr>
						<tr>
							<td width="29%"><b><font face="Arial">Subject</font></b></td>
							<td width="22%"><b><font face="Arial">Day</font></b></td>
							<td width="16%"><b><font face="Arial">Time</font></b></td>
						</tr>
						<%
							try {
								for (Takes t:resultList) {
									//Takes t = resultList.iterator().next();
									String sub = em.find(Subject.class, t.getSubID()).getName();
									int Class = em.find(Student.class, t.getSid()).getclass();
									Schedule sch = em.createQuery(
											"SELECT c FROM Schedule c WHERE c.Class=" + Class
													+ " AND c.subID='" + sub + "'",
											Schedule.class).getSingleResult();
									for (Const.Day d : Const.Day.values()) {
										//						        	 System.out.println(s);
						%>
						<tr>
							<td width="29%"><%=sub%></td>
							<td width="22%"><%=d.name()%></td>
							<td width="14%"><%=sch.getDayTime().get(d.name())%></td>
						</tr>
						<%
							}
								}
							} catch (Exception e) {
								out.println("Sorry No record Found");
							}
						%>
					</table>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>
				</td>
				<td width="20%" height="144" valign="top"
					style="border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px; border-bottom-style: solid">
					In the News
					<p>All the events happening will celebrated due to the opening
						of hall of fame.</p>
					<p>All the Date Sheet Will be released @ datesheet.pucit.edu</p>
				</td>
			</tr>
			<tr>
				<td width="99%" height="18" valign="top" colspan="3">
					<p align="center">
						<font face="Arial" size="2">All Rights® Reserved</font>
				</td>
			</tr>
		</table>
	</div>

</body>

</html>
