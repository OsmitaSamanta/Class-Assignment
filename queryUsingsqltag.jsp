<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*, com.mysql.jdbc.Driver"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
<head>  
<title>sql:query Tag</title>  
</head>  
<body>  
   
<!-- sql:setDataSource tag -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/db_world"  
     user="root"  password="root"/>  
 
 <!-- sql:update tag to INSERT -->    
<sql:update dataSource="${db}" var="count">  
INSERT INTO emp VALUES (122,'Virendra', 44000, 25); 
INSERT INTO emp VALUES (123,'Osmita', 44000, 25);
INSERT INTO emp VALUES (124,'Ram', 14000, 25);
INSERT INTO emp VALUES (125,'Shayam', 34000, 25);
INSERT INTO emp VALUES (126,'Madhu', 94000, 25); 
</sql:update>

<!-- sql:update with sq:param tag to DELETE -->  
<c:set var="salary" value="Manager"/>  
	<sql:update dataSource="${db}" var="count">  
		Update emp set empname = 'Manager' WHERE salary > 20000;
	 <sql:param value="${salary}" />  
</sql:update> 
   
<sql:update dataSource="${db}" var="count">  
		DELETE FROM emp WHERE empid in (102,103); 
</sql:update>
 
<!-- sql:query  tag --> 
<sql:query dataSource="${db}" var="rs">  
	SELECT * from emp;  
</sql:query>  
   
   
<table border="2" width="100%">  
<tr>  
<th>Employee ID</th>  
<th>Employee Name</th>  
<th>Salary</th>  
<th>Age</th>  
</tr>  
	<c:forEach var="table" items="${rs.rows}">  
		<tr>  
			<td><c:out value="${table.empid}"/></td>  
			<td><c:out value="${table.empname}"/></td>  
			<td><c:out value="${table.salary}"/></td>  
			<td><c:out value="${table.age}"/></td>  
		</tr>  
	</c:forEach>  
</table>  

</body>  
</html>  