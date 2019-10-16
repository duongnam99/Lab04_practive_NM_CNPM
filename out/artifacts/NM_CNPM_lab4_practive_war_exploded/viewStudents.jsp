<%--
  Created by IntelliJ IDEA.
  User: duongnam
  Date: 15/10/2019
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=ISO-8859-1" language="java" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:query var="listStudents" dataSource="jdbc/ClassManagement">
    select SQL_CALC_FOUND_ROWS * from Student limit 0, 4;
</sql:query>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>View Student</title>
</head>
<body>
<div>${listStudents.rows}</div>
<c:forEach items="${listStudents.rows}" var="item">
    ${item.FirstName}<br>
</c:forEach>
<div>${studentList}</div>
<%--<c:forEach items="${studentList}" var="item">--%>
<%--    ${item.FirstName}<br>--%>
<%--</c:forEach>--%>
<%--<table border="1" cellpadding="5" cellspacing="5" >--%>
<%--    <tr>--%>
<%--        <th>StudentID</th>--%>
<%--        <th>FirstName</th>--%>
<%--        <th>LastName</th>--%>
<%--        <th>Address</th>--%>
<%--        <th>Telephone</th>--%>
<%--        <th>Email</th>--%>
<%--        <th>Password</th>--%>

<%--    </tr>--%>
<%--    <c:forEach var="student" items="${studentList}">--%>
<%--        <tr>--%>
<%--            <td>${student.StudentID}</td>--%>
<%--            <td>${student.FirstName}</td>--%>
<%--            <td>${student.LastName}</td>--%>
<%--            <td>${student.Address}</td>--%>
<%--            <td>${student.Telephone}</td>--%>
<%--            <td>${student.Email}</td>--%>
<%--            <td>${student.Password}</td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--</table>--%>

<%--<c:if test="${currentPage != 1}">--%>
<%--    <td>--%>
<%--        <a href="student.do?page=${currentPage - 1}">Previous</a>--%>
<%--    </td>--%>
<%--</c:if>--%>

<%--<table border="1" cellpadding="5" cellspacing="5">--%>
<%--    <tr>--%>
<%--        <c:forEach begin="1" end="${noOfPages}" var="i">--%>
<%--            <c:choose>--%>
<%--                <c:when test="${currentPage eq i}">--%>
<%--                    <td>${i}</td>--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
<%--                    <td><a href="student.do?page=${i}">${i}</a> </td>--%>
<%--                </c:otherwise>--%>
<%--            </c:choose>--%>
<%--        </c:forEach>--%>
<%--    </tr>--%>
<%--</table>--%>

<%--<c:if test="${currentPage lt noOfPages}">--%>
<%--    <td><a href="student.do?page=${currentPage + 1}">Next</a> </td>--%>
<%--</c:if>--%>

<%--<p>${currentPage}</p>--%>
</body>
</html>