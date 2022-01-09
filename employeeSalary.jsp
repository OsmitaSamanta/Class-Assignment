<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- Choose, When, Otherwise Attribute -->
----------Employee Salary------
<c:set var="income" scope="session" value="${20000}"/>  
<p>Salary of Employee 1 : <c:out value="${income}"/></p>  
<c:choose>  
    <c:when test="${income >= 9000 && income <= 13000}"> 
       <p>Final salary of Employee 1 : <c:out value="${income+5000}"/></p>   
    </c:when>  
    <c:when test="${income >= 13500 && income <= 21000}"> 
       <p>Final salary of Employee 1 : <c:out value="${income+7000}"/></p>   
    </c:when>
    <c:when test="${income >= 22000 && income <= 26000}"> 
       <p>Final salary of Employee 1 : <c:out value="${income+9000}"/></p>   
    </c:when> 
    <c:when test="${income >= 28000}"> 
       <p>Final salary of Employee 1 : <c:out value="${income+10000}"/></p>   
    </c:when>  
    <c:otherwise>  
       Invalid input...  
    </c:otherwise>  
</c:choose> 
<c:set var="income" scope="session" value="${14000}"/>  
<p>Salary of Employee 2 : <c:out value="${income}"/></p>  
<c:choose>  
    <c:when test="${income >= 9000 && income <= 13000}"> 
       <p>Final salary of Employee 2 : <c:out value="${income+5000}"/></p>   
    </c:when>  
    <c:when test="${income >= 13500 && income <= 21000}"> 
       <p>Final salary of Employee 2 : <c:out value="${income+7000}"/></p>   
    </c:when>
    <c:when test="${income >= 22000 && income <= 26000}"> 
       <p>Final salary of Employee 3 : <c:out value="${income+9000}"/></p>   
    </c:when> 
    <c:when test="${income >= 28000}"> 
       <p>Final salary of Employee 3 : <c:out value="${income+10000}"/></p>   
    </c:when>  
    <c:otherwise>  
       Invalid input...  
    </c:otherwise>  
</c:choose> 
<c:set var="income" scope="session" value="${25000}"/>  
<p>Salary of Employee 3 : <c:out value="${income}"/></p>  
<c:choose>  
    <c:when test="${income >= 9000 && income <= 13000}"> 
       <p>Final salary of Employee 3 : <c:out value="${income+5000}"/></p>   
    </c:when>  
    <c:when test="${income >= 13500 && income <= 21000}"> 
       <p>Final salary of Employee 3 : <c:out value="${income+7000}"/></p>   
    </c:when>
    <c:when test="${income >= 22000 && income <= 26000}"> 
       <p>Final salary of Employee 3 : <c:out value="${income+9000}"/></p>   
    </c:when> 
    <c:when test="${income >= 28000}"> 
       <p>Final salary of Employee 3 : <c:out value="${income+10000}"/></p>   
    </c:when>  
    <c:otherwise>  
       Invalid input...  
    </c:otherwise>  
</c:choose> 
<c:set var="income" scope="session" value="${10000}"/>  
<p>Salary of Employee 4 : <c:out value="${income}"/></p>  
<c:choose>  
    <c:when test="${income >= 9000 && income <= 13000}"> 
       <p>Final salary of Employee 4 : <c:out value="${income+5000}"/></p>   
    </c:when>  
    <c:when test="${income >= 13500 && income <= 21000}"> 
       <p>Final salary of Employee 4 : <c:out value="${income+7000}"/></p>   
    </c:when>
    <c:when test="${income >= 22000 && income <= 26000}"> 
       <p>Final salary of Employee 4 : <c:out value="${income+9000}"/></p>   
    </c:when> 
    <c:when test="${income >= 28000}"> 
       <p>Final salary of Employee 4 : <c:out value="${income+10000}"/></p>   
    </c:when>  
    <c:otherwise>  
       Invalid input...  
    </c:otherwise>  
</c:choose> 

 


</body>
</html>