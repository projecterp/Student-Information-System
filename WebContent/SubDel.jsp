<html>

<head>
<link href="adminlogin/styles.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<title>Welcome to Online Student Information System</title>
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
				<td height="19" valign="top" bgcolor="#B7BCC6"
					style="border-left-width: 1px; border-right-width: 1px; border-top-style: solid; border-top-width: 1px; border-bottom-width: 1px">
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

				<td width="96%" height="21" bgcolor="#B7BCC6">
					<p align="center">
						<b><font face="Courier New, Courier, mono">Master
								today, that the world will learn tomorrow.</font></b>
				</td>
			</tr>
			<tr>
				<td width="96%" height="139" bgcolor="#B7BCC6">

					<form method="POST" action="deleteReg.jsp">

						<p align="center">
							Subject Name <input type="text" name="T1" size="20">
						</p>
						<p align="center">
							<input type="submit" value="Delete" name="B1"><input
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

