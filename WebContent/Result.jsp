<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.org.apache.regexp.internal.recompile"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="servletdb.*"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.EntityManager"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*"%>


<%!float v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12;

	String sid;
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
			resultList = (ArrayList<Takes>) em.createQuery(
					"SELECT c FROM Takes c WHERE c.sid='" + sid + "'")
					.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
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
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
</script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
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

<body background="images/background.gif" link="#0066CC" vlink="#CC9900"
	alink="#336699" style="background-attachment: fixed"
	onLoad="MM_preloadImages('images/time1.jpg','images/Fee1.jpg','images/lib1.jpg','/images/Home1.jpg')"
	topmargin="0">
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
								<td vAlign="top" align="right" colSpan="3" height="0"><div
										align="left">
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
				<td width="18%" height="144" valign="top"
					style="border-left-style: solid; border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px; border-bottom-style: solid">
					In the News <%
					String m = request.getParameter("month");
					if (m == null) {
						m = "Annual";
					}
				%>

					<p>All the events happening will celebrated due to the opening
						of hall of fame.</p> <select class="selectpicker"
					data-style="btn-primary" id="select">
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
					<button onclick="show()">Show</button> 
					<script>
						document.getElementById("select").value="<%=m%>";
							function show() {
								var month=document.getElementById("select").value;
								window.location
										.replace("Result.jsp?month="
												+ document
														.getElementById("select").value);
								document.getElementById("show").style.display = "block";
							}
						</script>
				</td>

				<td height="144" width="52%" valign="top"
					style="border-left-style: dashed; border-left-width: 1px; border-right-style: dashed; border-right-width: 1px; border-bottom-style: dashed; border-bottom-width: 1px">&nbsp;

					<table border="1" style="border-collapse: collapse" width="100%"
						id="table3">

						<tr>

							<td bgcolor="#B7BCC6" colspan="5" align="center"><b> <font
									face="Arial">Result of : <%
 	out.println(sname + " : " + sid);
 %></font></b></td>
						</tr>
						<div id="show" style="display: none;">
						<tr>
							<td width="36%"><b><font face="Arial">Subjects</font></b></td>
							<td width="15%"><b><font face="Arial">Total</font></b></td>
							<td width="14%"><b><font face="Arial">Cr.Hr.</font></b></td>
							<td width="15%"><b><font face="Arial">Obtained</font></b></td>
						</tr>
						<%
						    try{
							month = request.getParameter("month");
							int total = 0, count = 0, max = 0;
							if (month != null) {
								for (Takes t : resultList) {
									System.out.println(t.getGrade() + "\n" + t.getSid() + "\n"
											+ t.getSubID());
									Grade g =em.find(Grade.class,t.getGrade());
									float obtained = 0;
									if (month.equals("Annual")) {
										Iterator<String> itr = g.getGrades().keySet()
												.iterator();
										while (itr.hasNext()) {
											obtained += g.getGrades().get(itr.next()).intValue();
										}
										obtained = (obtained / g.getGrades().size()) * 100;
										total += t.getCredits() * obtained;
										count += t.getCredits();
										max = 100;
									} else {
										try{
										obtained = g.getGrades().get(month).intValue();
										}
										catch(Exception e){
											obtained = 0;
										}
										total += t.getCredits() * obtained;
										count += t.getCredits();
										max = 25;
									}
						%>
						<tr>
							<td width="36%"><font face="Arial"><%=em.find(Subject.class,t.getSubID()).getName()%></font></td>
							<td width="15%"><%=max%></td>
							<td width="14%"><%=t.getCredits()%></td>
							<td width="15%"><%=obtained%></td>
						</tr>
						<%
							}
								out.print(total);
								out.print(max);
								cgpa = (total*100)/(count*max);
							}
						%>
						<tr>
							<td width="36%">&nbsp;</td>
							<td width="44%" colspan="3">
								<p align="center">
									<b><font face="Arial" size="5">Percentage</font></b>
							</td>
							<td width="15%"><%=cgpa%></td>
						</tr>
						<%}catch(Exception e){out.println("Sorry No result Found");} %>
						</div>
					</table>
					<p>&nbsp;
				</td>
				<td width="28%" height="144" valign="top"
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
