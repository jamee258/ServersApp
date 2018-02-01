<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="jquery-3.2.1.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.0.3/angular.min.js"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Servers List</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/style.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/functions.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
	
</script>

</head>

<body>

	<jsp:include page="_menu.jsp"></jsp:include>

	<jsp:include page="_header.jsp"></jsp:include>

	<jsp:include page="_footer.jsp"></jsp:include>

	<div class="dropdown">
		<button onclick="myFunction()" class="dropbtn">
			Select A Server Type <i class="fa fa-angle-double-down"></i>
		</button>
		<div id="myDropdown" class="dropdown-content">
			<input type="text" placeholder="Search..." id="myInput"
				onkeyup="filterFunction()">

			<div id="myBtn1">
				<button
					onclick="document.getElementById('id01').style.display='block'"
					class="w3-button w3-lightgrey" id="database-button">
					<b>Database</b>
				</button>
			</div>

			<div id="id01" class="w3-modal">
				<div class="w3-modal-content w3-animate-opacity">
					<div class="w3-panel w3-leftbar w3-rightbar w3-border-blue">
						<div class="w3-container">
							<h3>
								<b><i>DATABASE SERVERS</i></b>
							</h3>
							<span
								onclick="document.getElementById('id01').style.display='none'"
								class="w3-button w3-display-topright">&times;</span>

							<ul class="nav nav-tabs" id="tabContent">
								<li class="active"><a href="#details" data-toggle="tab">Server
										1</a></li>
								<li><a href="#access-security" data-toggle="tab">Server
										4</a></li>
							</ul>

							<div class="tab-content">
								<div class="tab-pane active" id="details">

									<div id="databaseProducts">
										<c:forEach var="dbProducts" items="${databaseList}">
										Server Name: <b>${dbProducts.server}</b>
											<br>
										Environment: <b>${dbProducts.environment}</b>
											<br>
										Type: <b>${dbProducts.type}</b>
											<br>
										App1: <b>${dbProducts.app1}</b>
											<br>
										App2: <b>${dbProducts.app2}</b>
											<br>
										App3: <b>${dbProducts.app3}</b>
											<br>
										App4: <b>${dbProducts.app4}</b>
											<br>
										App5: <b>${dbProducts.app5}</b>
											<br>
										App6: <b>${dbProducts.app6}</b>
											<br>
										App7: <b>${dbProducts.app7}</b>
											<br>
										App8: <b>${dbProducts.app8}</b>
											<br>
										Start Date: <b>${dbProducts.start_Date}</b>
											<br>
										End Date: <b>${dbProducts.end_Date}</b>
											<br>
										Allocation Status: <b>${dbProducts.allocation_Status}</b>
											<br>
										Comments: <b>${dbProducts.comments}</b>
											<br>
										Application Links: <b>${dbProducts.application_Links}</b>
											<br>
										Installed Software & Versions: <b>${dbProducts.installed_Softwares_And_Versions}</b>
											<br>
										Support End Date: <b>${dbProducts.support_End_Date}</b>
											<br>
										Space Available: <b>${dbProducts.space_Available}(GB)</b>
											<br>
											<hr>
										</c:forEach>
									</div>

									<!-- <c:forEach var="dbProducts" items="${mappedLists}">
									mappedLists.get("Database Server")
									</c:forEach> -->

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="myBtn2">
				<button
					onclick="document.getElementById('id02').style.display='block'"
					class="w3-button w3-lightgrey">
					<b>JBoss</b>
				</button>
			</div>

			<div id="id02" class="w3-modal">
				<div class="w3-modal-content w3-animate-opacity">
					<div class="w3-panel w3-leftbar w3-rightbar w3-border-blue ">

						<div class="w3-container">
							<h3>
								<b><i>JBOSS SERVERS</i></b>
							</h3>
							<span
								onclick="document.getElementById('id02').style.display='none'"
								class="w3-button w3-display-topright">&times;</span>

							<div id="jbossProducts">
								<c:forEach var="jbossProducts" items="${jbossList}">

								 Server Name: <b><c:out value="${jbossProducts.server}" /></b>
									<br>
										Environment: <b>${jbossProducts.environment}</b>
									<br>
										Type: <b>${jbossProducts.type}</b>
									<br>
										App1: <b>${jbossProducts.app1}</b>
									<br>
										App2: <b>${jbossProducts.app2}</b>
									<br>
										App3: <b>${jbossProducts.app3}</b>
									<br>
										App4: <b>${jbossProducts.app4}</b>
									<br>
										App5: <b>${jbossProducts.app5}</b>
									<br>
										App6: <b>${jbossProducts.app6}</b>
									<br>
										App7: <b>${jbossProducts.app7}</b>
									<br>
										App8: <b>${jbossProducts.app8}</b>
									<br>
										Start Date: <b>${jbossProducts.start_Date}</b>
									<br>
										End Date: <b>${jbossProducts.end_Date}</b>
									<br>
										Allocation Status: <b>${jbossProducts.allocation_Status}</b>
									<br>
										Comments: <b>${jbossProducts.comments}</b>
									<br>
										Application Links: <b>${jbossProducts.application_Links}</b>
									<br>
										Installed Software & Versions: <b>${jbossProducts.installed_Softwares_And_Versions}</b>
									<br>
										Support End Date: <b>${jbossProducts.support_End_Date}</b>
									<br>
										Space Available: <b>${jbossProducts.space_Available}(GB)</b>
									<br>
									<hr>
								</c:forEach>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div id="myBtn3">
				<button
					onclick="document.getElementById('id03').style.display='block'"
					class="w3-button w3-lightgrey">
					<b>Mule</b>
				</button>
			</div>

			<div id="id03" class="w3-modal">
				<div class="w3-modal-content w3-animate-opacity">
					<div class="w3-panel w3-leftbar w3-rightbar w3-border-blue ">
						<div class="w3-container">
							<h3>
								<b><i>MULE SERVERS</i></b>
							</h3>
							<span
								onclick="document.getElementById('id03').style.display='none'"
								class="w3-button w3-display-topright">&times;</span>
							<div id="muleProducts">
								<c:forEach var="muleProducts" items="${muleList}">
										Server Name: <b>${muleProducts.server}</b>
									<br>
										Environment: <b>${muleProducts.environment}</b>
									<br>
										Type: <b>${muleProducts.type}</b>
									<br>
										App1: <b>${muleProducts.app1}</b>
									<br>
										App2: <b>${muleProducts.app2}</b>
									<br>
										App3: <b>${muleProducts.app3}</b>
									<br>
										App4: <b>${muleProducts.app4}</b>
									<br>
										App5: <b>${muleProducts.app5}</b>
									<br>
										App6: <b>${muleProducts.app6}</b>
									<br>
										App7: <b>${muleProducts.app7}</b>
									<br>
										App8: <b>${muleProducts.app8}</b>
									<br>
										Start Date: <b>${muleProducts.start_Date}</b>
									<br>
										End Date: <b>${muleProducts.end_Date}</b>
									<br>
										Allocation Status: <b>${muleProducts.allocation_Status}</b>
									<br>
										Comments: <b>${muleProducts.comments}</b>
									<br>
										Application Links: <b>${muleProducts.application_Links}</b>
									<br>
										Installed Software & Versions: <b>${muleProducts.installed_Softwares_And_Versions}</b>
									<br>
										Support End Date: <b>${muleProducts.support_End_Date}</b>
									<br>
										Space Available: <b>${muleProducts.space_Available}(GB)</b>
									<br>
									<hr>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="myBtn4">
				<button
					onclick="document.getElementById('id04').style.display='block'"
					class="w3-button w3-lightgrey">
					<b>BO</b>
				</button>
			</div>

			<div id="id04" class="w3-modal">
				<div class="w3-modal-content w3-animate-opacity">
					<div class="w3-panel w3-leftbar w3-rightbar w3-border-blue ">
						<div class="w3-container">
							<h3>
								<b><i>BO SERVERS</i></b>
							</h3>
							<span
								onclick="document.getElementById('id04').style.display='none'"
								class="w3-button w3-display-topright">&times;</span>

							<div id="boProducts">
								<c:forEach var="boProducts" items="${boList}">
										Server Name: <b>${boProducts.server}</b>
									<br>
										Environment: <b>${boProducts.environment}</b>
									<br>
										Type: <b>${boProducts.type}</b>
									<br>
										App1: <b>${boProducts.app1}</b>
									<br>
										App2: <b>${boProducts.app2}</b>
									<br>
										App3: <b>${boProducts.app3}</b>
									<br>
										App4: <b>${boProducts.app4}</b>
									<br>
										App5: <b>${boProducts.app5}</b>
									<br>
										App6: <b>${boProducts.app6}</b>
									<br>
										App7: <b>${boProducts.app7}</b>
									<br>
										App8: <b>${boProducts.app8}</b>
									<br>
										Start Date: <b>${boProducts.start_Date}</b>
									<br>
										End Date: <b>${boProducts.end_Date}</b>
									<br>
										Allocation Status: <b>${boProducts.allocation_Status}</b>
									<br>
										Comments: <b>${boProducts.comments}</b>
									<br>
										Application Links: <b>${boProducts.application_Links}</b>
									<br>
										Installed Software & Versions: <b>${boProducts.installed_Softwares_And_Versions}</b>
									<br>
										Support End Date: <b>${boProducts.support_End_Date}</b>
									<br>
										Space Available: <b>${boProducts.space_Available}(GB)</b>
									<br>
									<hr>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="myBtn5">
				<button
					onclick="document.getElementById('id05').style.display='block'"
					class="w3-button w3-lightgrey">
					<b>ETL-Job</b>
				</button>
			</div>

			<div id="id05" class="w3-modal">
				<div class="w3-modal-content w3-animate-opacity">
					<div class="w3-panel w3-leftbar w3-rightbar w3-border-blue ">
						<div class="w3-container">
							<h3>
								<b><i>ETL-JOB SERVERS</i></b>
							</h3>
							<span
								onclick="document.getElementById('id05').style.display='none'"
								class="w3-button w3-display-topright">&times;</span>

							<div id="etlJobProducts">
								<c:forEach var="etlJobProducts" items="${etlJobList}">
										Server Name: <b>${etlJobProducts.server}</b>
									<br>
										Environment: <b>${etlJobProducts.environment}</b>
									<br>
										Type: <b>${etlJobProducts.type}</b>
									<br>
										App1: <b>${etlJobProducts.app1}</b>
									<br>
										App2: <b>${etlJobProducts.app2}</b>
									<br>
										App3: <b>${etlJobProducts.app3}</b>
									<br>
										App4: <b>${etlJobProducts.app4}</b>
									<br>
										App5: <b>${etlJobProducts.app5}</b>
									<br>
										App6: <b>${etlJobProducts.app6}</b>
									<br>
										App7: <b>${etlJobProducts.app7}</b>
									<br>
										App8: <b>${etlJobProducts.app8}</b>
									<br>
										Start Date: <b>${etlJobProducts.start_Date}</b>
									<br>
										End Date: <b>${etlJobProducts.end_Date}</b>
									<br>
										Allocation Status: <b>${etlJobProducts.allocation_Status}</b>
									<br>
										Comments: <b>${etlJobProducts.comments}</b>
									<br>
										Application Links: <b>${etlJobProducts.application_Links}</b>
									<br>
										Installed Software & Versions: <b>${etlJobProducts.installed_Softwares_And_Versions}</b>
									<br>
										Support End Date: <b>${etlJobProducts.support_End_Date}</b>
									<br>
										Space Available: <b>${etlJobProducts.space_Available}(GB)</b>
									<br>
									<hr>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="myBtn6">
				<button
					onclick="document.getElementById('id05').style.display='block'"
					class="w3-button w3-lightgrey">
					<b>ETL-Management</b>
				</button>
			</div>

			<div id="id06" class="w3-modal">
				<div class="w3-modal-content w3-animate-opacity">
					<div class="w3-panel w3-leftbar w3-rightbar w3-border-blue ">
						<div class="w3-container">
							<h3>
								<b><i>ETL-MANAGEMENT SERVERS</i></b>
							</h3>
							<span
								onclick="document.getElementById('id06').style.display='none'"
								class="w3-button w3-display-topright">&times;</span>

							<div id="etlManagementProducts">
								<c:forEach var="etlManagementProducts"
									items="${etlManagementList}">
										Server Name: <b>${etlManagementProducts.server}</b>
									<br>
										Environment: <b>${etlManagementProducts.environment}</b>
									<br>
										Type: <b>${etlManagementProducts.type}</b>
									<br>
										App1: <b>${etlManagementProducts.app1}</b>
									<br>
										App2: <b>${etlManagementProducts.app2}</b>
									<br>
										App3: <b>${etlManagementProducts.app3}</b>
									<br>
										App4: <b>${etlManagementProducts.app4}</b>
									<br>
										App5: <b>${etlManagementProducts.app5}</b>
									<br>
										App6: <b>${etlManagementProducts.app6}</b>
									<br>
										App7: <b>${etlManagementProducts.app7}</b>
									<br>
										App8: <b>${etlManagementProducts.app8}</b>
									<br>
										Start Date: <b>${etlManagementProducts.start_Date}</b>
									<br>
										End Date: <b>${etlManagementProducts.end_Date}</b>
									<br>
										Allocation Status: <b>${etlManagementProducts.allocation_Status}</b>
									<br>
										Comments: <b>${etlManagementProducts.comments}</b>
									<br>
										Application Links: <b>${etlManagementProducts.application_Links}</b>
									<br>
										Installed Software & Versions: <b>${etlManagementProducts.installed_Softwares_And_Versions}</b>
									<br>
										Support End Date: <b>${etlManagementProducts.support_End_Date}</b>
									<br>
										Space Available: <b>${etlManagementProducts.space_Available}(GB)</b>
									<br>
									<hr>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="myBtn6">
				<button
					onclick="document.getElementById('id07').style.display='block'"
					class="w3-button w3-lightgrey">
					<b>SharePoint Application</b>
				</button>
			</div>

			<div id="id07" class="w3-modal">
				<div class="w3-modal-content w3-animate-opacity">
					<div class="w3-panel w3-leftbar w3-rightbar w3-border-blue ">
						<div class="w3-container">
							<h3>
								<b><i>SHAREPOINT APPLICATION SERVERS</i></b>
							</h3>
							<span
								onclick="document.getElementById('id07').style.display='none'"
								class="w3-button w3-display-topright">&times;</span>

							<div id="sharepointApplicationProducts">
								<c:forEach var="sharepointApplicationProducts"
									items="${sharepointApplicationList}">
										Server Name: <b>${sharepointApplicationProducts.server}</b>
									<br>
										Environment: <b>${sharepointApplicationProducts.environment}</b>
									<br>
										Type: <b>${sharepointApplicationProducts.type}</b>
									<br>
										App1: <b>${sharepointApplicationProducts.app1}</b>
									<br>
										App2: <b>${sharepointApplicationProducts.app2}</b>
									<br>
										App3: <b>${sharepointApplicationProducts.app3}</b>
									<br>
										App4: <b>${sharepointApplicationProducts.app4}</b>
									<br>
										App5: <b>${sharepointApplicationProducts.app5}</b>
									<br>
										App6: <b>${sharepointApplicationProducts.app6}</b>
									<br>
										App7: <b>${sharepointApplicationProducts.app7}</b>
									<br>
										App8: <b>${sharepointApplicationProducts.app8}</b>
									<br>
										Start Date: <b>${sharepointApplicationProducts.start_Date}</b>
									<br>
										End Date: <b>${sharepointApplicationProducts.end_Date}</b>
									<br>
										Allocation Status: <b>${sharepointApplicationProducts.allocation_Status}</b>
									<br>
										Comments: <b>${sharepointApplicationProducts.comments}</b>
									<br>
										Application Links: <b>${sharepointApplicationProducts.application_Links}</b>
									<br>
										Installed Software & Versions: <b>${sharepointApplicationProducts.installed_Softwares_And_Versions}</b>
									<br>
										Support End Date: <b>${sharepointApplicationProducts.support_End_Date}</b>
									<br>
										Space Available: <b>${sharepointApplicationProducts.space_Available}(GB)</b>
									<br>
									<hr>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>


	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>