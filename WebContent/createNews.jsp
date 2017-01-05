<html>
<head>
<link href="adminlogin/styles.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdn.tinymce.com/4/tinymce.min.js"></script>
<script>tinymce.init({ selector:'#description' });</script>

<title>Publish News</title>
</head>
<body>
	<table>
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
	</table>

	<div id="modalCompose" style="overflow: auto">
		<div class="modal-dialog">

			<div class="modal-content">
				<form action="News" method="post">
					<div class="modal-header">
						<button type="button" onclick="close()" class="close"
							data-dismiss="modal" aria-hidden="true">×</button>
						<h4 class="modal-title">Publish News</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label class="col-sm-12" for="inputBody">Description</label>
							<div class="col-sm-12">
								<textarea class="form-control" id="description" name="T1" rows="8"></textarea>
							</div>
						</div>

					</div>
					<input type="submit" name="submit" value="Submit"> <input
						type="Reset">
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

</body>
</html>

