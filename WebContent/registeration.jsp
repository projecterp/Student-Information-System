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
<title>.::Student Registration Form::.</title>
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
	<form method="POST" action="reg" name="Registeration">

		<table border="0" style="border-collapse: collapse" width="100%"
			id="table1">
			<tr>
				<td align="center" height="32" colspan="3"
					style="border-left-width: 1px; border-right-width: 1px; border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px"
					bgcolor="#808080"><b><font size="5" face="Arial"
						color="#FFFFFF">Registration Form</font></b></td>
			</tr>
			<tr>
				<td align="center" height="21" colspan="3"
					style="border-left-width: 1px; border-right-width: 1px">&nbsp;</td>
			</tr>
			<tr>
				<td width="214" align="center" height="22">&nbsp;</td>
				<td width="182" align="left" height="22"><font face="Arial">Student
						ID</font></td>
				<td height="22" align="left"><font face="Arial Narrow"><input
						type="text" name="T1" size="23"></font><font size="2"
					face="Arial Narrow"> (e.g. bits04a002)</font></td>
			</tr>
			<tr>
				<td width="214" align="center" height="23">&nbsp;</td>
				<td width="182" align="left" height="23"><font face="Arial">Student
						Name</font></td>
				<td height="23" align="left"><font face="Arial Narrow"><input
						type="text" name="T2" size="23"></font><font size="2"
					face="Arial Narrow"> (e.g. john corollas)</font></td>
			</tr>
			<tr>
				<td width="214" align="center" height="23">&nbsp;</td>
				<td width="182" align="left" height="23"><font face="Arial">Password</font></td>
				<td height="23" align="left"><font face="Arial Narrow">
						<input name="T3" size="23" type="password">
				</font><font size="2" face="Arial Narrow"> (e.g. secret word for
						login)</font></td>
			</tr>
			<tr>
				<td width="214" align="center" height="23">&nbsp;</td>
				<td width="182" align="left" height="23"><font face="Arial">Class</font></td>
				<td height="23" align="left"><select class="selectpicker"
					data-style="btn-primary" id="select" name="T4">
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
				</select></td>
			</tr>
			<tr>
				<td width="214" align="center">&nbsp;</td>
				<td width="182" align="left"><font face="Arial">Father
						Name</font></td>
				<td align="left"><font face="Arial Narrow"><input
						type="text" name="T5" size="23"></font></td>
			</tr>
			<tr>
				<td width="214" align="center">&nbsp;</td>
				<td width="182" align="left"><font face="Arial">Date of
						Birth</font></td>
				<td align="left"><font face="Arial Narrow"><input
						type="text" name="T6" size="23"></font><font size="2"
					face="Arial Narrow"> (e.g. 26-9-1990)</font></td>
			</tr>
			<tr>
				<td width="214" align="center" height="22">&nbsp;</td>
				<td width="182" align="left" height="22"><font face="Arial">
						Nationality</font></td>
				<td height="22" align="left"><font face="Arial Narrow"><input
						type="text" name="T7" size="23"></font><font size="2"
					face="Arial Narrow"> (e.g Indian)</font></td>
			</tr>
			<tr>
				<td width="214" align="center">&nbsp;</td>
				<td width="182" align="left"><font face="Arial">Address</font></td>
				<td align="left"><font face="Arial Narrow"> <textarea
							name="T8" cols="35" rows="4"></textarea>
				</font></td>
			</tr>
			<tr>
				<td width="214" align="center">&nbsp;</td>
				<td width="182" align="left"><font face="Arial">City</font></td>
				<td align="left"><font face="Arial Narrow"><select
						size="1" name="T9">
							<option selected>Mumbai</option>
							<option>Delhi</option>
							<option>Ahmedabad</option>
							<option>Jaipur</option>
							<option>Kolakata</option>
					</select></font><font size="2" face="Arial Narrow">&nbsp; </font></td>
			</tr>
			<tr>
				<td width="214" align="center">&nbsp;</td>
				<td width="182" align="left"><font face="Arial">Country</font></td>
				<td align="left"><font face="Arial Narrow"><select
						size="1" name="T10">
							<option selected>India</option>
							<option>Nepal</option>
							<option>USA</option>
							<option>UAE</option>
							<option>Australia</option>
					</select></font></td>
			</tr>
			<tr>
				<td width="214" align="center" height="23">&nbsp;</td>
				<td width="182" align="left" height="23"><font face="Arial">Phone</font></td>
				<td height="23" align="left"><font face="Arial Narrow">
						<input type="text" name="T11" size="23">
				</font><font size="2" face="Arial Narrow"> (e.g. 052-6614784)</font></td>
			</tr>
			<tr>
				<td width="214" align="center">&nbsp;</td>
				<td width="182" align="left"><font face="Arial">Mobile</font></td>
				<td align="left"><font face="Arial Narrow"><input
						type="text" name="T12" size="23"></font><font size="2"
					face="Arial Narrow"> (e.g. 0345-4074845)</font></td>
			</tr>
			<tr>
				<td width="214" align="center">&nbsp;</td>
				<td width="182" align="left"><font face="Arial">N.I.C.</font></td>
				<td align="left"><font face="Arial Narrow"><input
						type="text" name="T13" size="23"></font><font size="2"
					face="Arial Narrow"> (e.g. 34601-2764748-5)</font></td>
			</tr>
			<tr>
				<td width="214" align="center">&nbsp;</td>
				<td width="182" align="left"><font face="Arial">Email</font></td>
				<td align="left"><font face="Arial Narrow"><input
						type="text" name="T14" size="23"></font><font size="2"
					face="Arial Narrow"> (e.g. xyzabc@pqr.com</font></td>
			</tr>
		</table>
		<p align="center">
			<input type="submit" value="Submit" name="B1"><input
				type="reset" value="Reset" name="B2">
		</p>
	</form>

</body>

</html>


