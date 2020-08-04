<%@page import="java.util.ArrayList"%>
<%@page import="com.prathyusha.dto.Department"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
h1 {
	color: green;
}
header {
	background-color: black;
	width: 100%;
	height: 50px;
	text-align: center;
}
 #sidebar-left {
	float: left;
	width: 15%;
	background-color:#83A0FF;
}
#main {
	float: left;
	width: 85%;
	background-color: lightgray;
}
#footer {
	clear: both;
	height: 50px;
	width: 100%;
	text-align: center;
	background-color:#ffa483;
}
#sidebar-left {
	min-height: 500px
}
table.d, td {
	table-layout: fixed;
	width: 30%;
	height: 10px;
	padding: 4px;
}



input[type=text] {
	border: 1px solid black;
	background-color: light-grey;
}
</style>
<title><spring:message code="label.getall"></spring:message></title>
</head>
<body>

<div id="header">
		<div class="any">
			<a href="listDept"><font color="white"><spring:message
						code="label.home"></spring:message></font></a> <a href="listDept"><font
				color="white"><spring:message code="label.admin"></spring:message></font></a>
		</div>
		<div class="logout">



			<a href="logout"><font color="white"><spring:message
						code="label.logout"></spring:message></font></a>
		</div>
		<h4>
			<font color="white"><spring:message code="label.app"></spring:message></font>
		</h4>
		<br>
		
	</div>
	<div id="footer">
		<h2>
			<a href="/DepEmpApp?siteLanguage=en">English</a>|<a
				href="/DepEmpApp?siteLanguage=fr">French</a>
		</h2>
	</div>


	<div id="sidebar-left">

		<form action="home">
			<br> <input type="submit" value="+">
			<spring:message code="label.department"></spring:message>
		</form>

		<c:if test="${check eq 'checklist'}">
			<c:forEach var="dept" items="${deptLst}">
				<c:if test="${not empty dept}">

					<input type="hidden" name="deptId" value="${dept.deptId}">

					<br>
					<a href="deptControl"><b>=></b></a>
					<button type="button" class="btn btn-success" style="width: 100px;">
						<a href="listDeptName?deptId=${dept.deptId}"><font
							color="black">${dept.deptName} </font></a>
					</button>
					<br>

				</c:if>
			</c:forEach>

		</c:if>

	</div>

	<div id="main">


		<c:if test="${home ne 'homemp'}">


			<div align="center">


				<c:if test="${Register eq 'NewFormDept'}">
					<form action="saveDept" method="post">
				</c:if>
				<c:if test="${Register ne 'NewFormDept'}">
					<form action="saveDept" method="post">
				</c:if>

				<table border="1" style="width: 70%">

					<thead>
						<tr>
							<th colspan="2.5" style="text-align: center"><font
								color="green"><spring:message code="label.getAllDept"></spring:message></font></th>
							<th colspan="3" style="text-align: center"><a href="newDept"><spring:message
										code="label.addDept"></spring:message> </a></th>


						</tr>
						<tr>
							<th><spring:message code="label.deptId"></spring:message></th>
							<th><spring:message code="label.deptName"></spring:message></th>
							<th><spring:message code="label.update"></spring:message></th>
							<th><spring:message code="label.delete"></spring:message></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${deptList}" var="dept">

							<c:if test="${departId eq dept.deptId}">
								<tr>
									<td><input type="" name="deptId" value="${dept.deptId}"
										readonly="readonly" /></td>
									<td><input type="text" name="deptName"
										value="${dept.deptName}" /></td>

									<td><input type="submit" value="update" /></td>
								</tr>
							</c:if>
							<c:if test="${departId ne dept.deptId}">
								<tr>

									<td>${dept.deptId}</td>
									<td>${dept.deptName}</td>

									<td><a href="updateDept?id=${dept.deptId}"><img src="https://cdn1.iconfinder.com/data/icons/hawcons/32/698873-icon-136-document-edit-512.png" width="60" height="60">
									</a></td>
									<td><a href="deleteDept?id=${dept.deptId}"><img src="https://safebytes.com/wp-content/uploads/2016/05/delete-image.jpg"  width="60" height="60">
									</a></td>
								</tr>
							</c:if>
						</c:forEach>
						<c:if test="${insertDept eq 'newDept'}">
							<tr>
								<td><input type="text" name="depId" /></td>
								<td><input type="text" name="deptName" /></td>

								<td colspan="2"><input type="submit" value="save" /></td>
							</tr>
						</c:if>
					</tbody>
				</table>

			</div>
		</c:if>



		<c:if test="${home eq 'homemp'}">
			<div align="center">

				<c:if test="${Register ne 'NewForm'}">
					<form action="updateEmp" method="post">
				</c:if>
				<c:if test="${Register eq 'NewForm'}">
					<form action="saveEmp" method="post">
				</c:if>


				<table border="2"background-color:#eee;>
					<thead>
						<tr>
							<th colspan="4" style="text-align: center"><spring:message
									code="label.getAllEmp"></spring:message></th>
							<th colspan="3" style="text-align: center"><a href="newEmp"><spring:message
										code="label.addEmp"></spring:message> </a></th>
						</tr>
						<tr>
							<th><spring:message code="label.empId"></spring:message></th>
							<th><spring:message code="label.empName"></spring:message></th>
							<th><spring:message code="label.age"></spring:message></th>
							<th><spring:message code="label.deptId"></spring:message></th>
							<th><spring:message code="label.deptName"></spring:message></th>
							<th><spring:message code="label.update"></spring:message></th>
							<th><spring:message code="label.delete"></spring:message></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${empLst}" var="emp">
							<c:if test="${employeeid eq emp.empId}">
								<c:if test="${deptId eq emp.deptId}">
									<tr>
										<td><input type="text" name="empId" value="${emp.empId}"
											readonly="readonly" /></td>
										<td><input type="text" name="empName"
											value="${emp.empName}" /></td>
										<td><input type="text" name="age" value="${emp.age}" /></td>
										<td><input type="text" name="deptId"
											value="${emp.deptId}" /></td>

										<td><input type="submit" value="update" /></td>
									</tr>
								</c:if>
							</c:if>
							<c:if test="${employeeid ne emp.empId}">
								<tr>

									<td>${emp.empId}</td>
									<td>${emp.empName}</td>
									<td>${emp.age}</td>
									<td>${emp.deptId}</td>
									<c:forEach items="${deptLst}" var="dtn">
										<c:if test="${emp.deptId eq dtn.deptId}">
											<td>${dtn.deptName}</td>
										</c:if>
									</c:forEach>
									<td><a
										href="editEmp?empId=${emp.empId}&deptId=${emp.deptId}"><img src="https://cdn1.iconfinder.com/data/icons/hawcons/32/698873-icon-136-document-edit-512.png" width="60" height="60">
										</a></td>
									<td><a
										href="deleteEmp?empId=${emp.empId}&deptId=${emp.deptId}"><img src="https://safebytes.com/wp-content/uploads/2016/05/delete-image.jpg"  width="60" height="60">
										</a></td>
								</tr>
							</c:if>
						</c:forEach>
						<c:if test="${addEmp eq 'regEmp'}">
							<tr>
								<td><input type="text" name="empId" /></td>
								<td><input type="text" name="empName" /></td>
								<td><input type="text" name="age" /></td>
								<td><input type="text" name="deptId" /></td>

								<td colspan="2"><input type="submit" value="save" /></td>
							</tr>
						</c:if>
					</tbody>
				</table>
				</form>
		</c:if>
	</div>


</body>

</html>