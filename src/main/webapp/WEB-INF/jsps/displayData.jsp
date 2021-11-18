<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complete Data</title>
<style>

.content-table {
  border-collapse: collapse;
  margin: 25px 0;
  font-size: 0.9em;
  min-width: 400px;
  border-radius: 5px 5px 0 0;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.content-table thead tr {
  text-align: center;
  background-color: #009879;
  color: #ffffff;
  text-align: left;
  font-weight: bold;
}

.content-table th,
.content-table td {
  text-align: center;
  padding: 12px 15px;
}

.content-table tbody tr {
  border-bottom: 1px solid #dddddd;
}

.content-table tbody tr:nth-of-type(even) {
  background-color: #f3f3f3;
}

.content-table tbody tr:last-of-type {
  border-bottom: 2px solid #009879;
}

.content-table tbody tr.active-row {
  font-weight: bold;
  color: #009879;
}
.sub{
    width: 20%;
    border-radius: 5px 5px 5px 5px;
    margin: 12px 0 0 0;
    font-size: 15px;
    height: 40px;
    background-color: #009879;
    border: 1px solid rgb(17, 67, 107);
    color: #fff;
}
.sub:hover{
    background-color: #01e943;
    color: #fff;
}
</style>
</head>
<body>
<h2>	Students Data </h2>
		<table class="content-table">
		  <thead>	
			<tr>
				<th> ID	</th>
				<th> Name </th>
				<th> Father Name </th>
				<th> Registration #	</th>
				<th> CNIC #	</th>
				<th> Phone #	</th>
				<th> Email	</th>
				<th> Gender 	</th>
				<th> Vacination Date	</th>
				<th> Vaccine Name 	</th>
				
				<th colspan="2" style="text-align: center;"> Action	</th>
			</tr>
	 	 </thead>
		<c:forEach items="${data}" var="location">
		 <tbody>	
			<tr class="active-row">
				<td>${location.id}</td>
				<td>${location.sName}</td>
				<td>${location.sFName}</td>
				<td>${location.sRegistrattion}</td>
				<td>${location.sCnic}</td>
				<td>${location.phone}</td>
				<td>${location.email}</td>
				<td>${location.sGender}</td>
				<td>${location.sDateOfVacination}</td>
				<td>${location.vacineName}</td>
				<td><a href="deleteData?id=${location.id}">Delete</a></td>
			</tr>
		  </tbody>	
			</c:forEach>
		</table>
<input type="submit" name="submit" onclick="window.location.href='addData'"; value="Add new Data" class="sub">
	
</body>
</html>