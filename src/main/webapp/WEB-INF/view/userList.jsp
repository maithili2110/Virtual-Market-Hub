<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Spring 3 hibernate integration example on www.howtodoinjava.com</title>
</head>
<body>
 
<h2>User Management Screen : Spring 3 hibernate integration example on www.howtodoinjava.com</h2>
 
<form:form method="post" action="add" commandName="user">
 
    <table>
    
    <tr>
        <td><form:label path="firstname"><spring:message code="label.firstname"/></form:label></td>
        <td><form:input path="firstname" /></td>
    </tr>
    <tr>
        <td><form:label path="lastname"><spring:message code="label.lastname"/></form:label></td>
        <td><form:input path="lastname" /></td>
    </tr>
    <tr>
        <td><form:label path="email"><spring:message code="label.email"/></form:label></td>
        <td><form:input path="email" /></td>
    </tr>
    <tr>
        <td><form:label path="password"><spring:message code="label.password"/></form:label></td>
        <td><form:input path="password" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="<spring:message code="label.add"/>"/>
        </td>
    </tr>
</table> 
</form:form>
 
     
<h3>Users</h3>
<c:if  test="${!empty userList}">
<table class="data">
<tr>
    <th>Name</th>
    <th>Email</th>
    <th>Password</th>
    <th>&nbsp;</th>
</tr>
<c:forEach items="${userList}" var="emp">
    <tr>
        <td>${emp.lastname}, ${emp.firstname} </td>
        <td>${emp.email}</td>
        <td>${emp.password}</td>
        <td><a href="delete/${emp.id}">delete</a></td>
    </tr>
</c:forEach>
</table>
</c:if>
 
</body>
</html>