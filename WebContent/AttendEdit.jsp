<html>

<head>
<link href="adminlogin/styles.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
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
<title>Edit Attendance</title>
</head>

<body background="images/background.gif" topmargin="0"
	style="text-align: center">


	<table border="0" style="border-collapse: collapse" width="92%"
		id="table2">
		<tr>
			<td height="93" bgcolor="#B7BCC6">
				<p align="center">
					<b><font size="7" face="Arial"> <img border="0"
							src="images/header.jpg" width="1280" height="100"></font></b>
			</td>
		</tr>
		<tr>
			<td height="19" valign="top" bgcolor="#B7BCC6"
				style="border-left-width: 1px; border-right-width: 1px; border-top-style: solid; border-top-width: 1px; border-bottom-width: 1px">
				<p align="right">
					<a href="logout.jsp"><b><font face="Arial" size="1">Logout</font></b></a>
			</td>
		</tr>
	</table>
	<div align="center">
		<table id="table3" style="BORDER-COLLAPSE: collapse" width="92%"
			border="0">
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
		</table>
	</div>
	<form method="POST" action="AttendAdd" name="Registeration">

		<table border="0" style="border-collapse: collapse" width="100%"
			id="table1">
			<tr>
				<td align="center" height="32" colspan="3"
					style="border-left-width: 1px; border-right-width: 1px; border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"
					bgcolor="#808080"><b><font size="5" face="Arial"
						color="#FFFFFF">Attendance Editor</font></b></td>
			</tr>
			<tr>
				<td align="center" height="21" colspan="3"
					style="border-left-width: 1px; border-right-width: 1px">&nbsp;</td>
			</tr>
			<tr>
				<td width="214" align="center" height="22">&nbsp;</td>
				<td width="182" align="left" height="22"><font face="Arial">Subject
						Name</font></td>
				<td height="22" align="left"><font face="Arial Narrow"><input
						type="text" name="T1" size="23"></font><font size="2"
					face="Arial Narrow"></font></td>
			</tr>
			<tr>
				<td width="214" align="center" height="23">&nbsp;</td>
				<td width="182" align="left" height="23"><font face="Arial">Student
						ID</font></td>
				<td height="23" align="left"><font face="Arial Narrow"><input
						type="text" name="T2" size="23"></font><font size="2"
					face="Arial Narrow"> (e.g. 1234)</font></td>
			</tr>
			<tr>
				<td width="214" align="center" height="23">&nbsp;</td>
				<td width="182" align="left" height="23"><font face="Arial">Month
				</font></td>
				<td height="23" align="left"><select class="selectpicker"
					data-style="btn-primary" id="select" name="T3">
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
				</select></td>
			</tr>
			<tr>
				<td width="214" align="center" height="23">&nbsp;</td>
				<td width="182" align="left" height="23"><font face="Arial">Classes
						Attended</font></td>
				<td height="23" align="left"><font face="Arial Narrow"><input
						type="text" name="T4" size="23"></font><font size="2"
					face="Arial Narrow"></font></td>
			</tr>


		</table>
		<p align="center">
			<input type="submit" value="Submit" name="B1"><input
				type="reset" value="Reset" name="B2">
		</p>
	</form>

</body>

</html>