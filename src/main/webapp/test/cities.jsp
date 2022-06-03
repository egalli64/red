<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<sql:query dataSource="jdbc/red" var="coders">
    SELECT city_id, name
    FROM city
</sql:query>
<title>Coders</title>
<link rel="icon" href="data:;base64,=">
</head>
<body>
    <h1>cities by JSTL (don't do this in production!)</h1>
    <table>
        <tr>
            <th>id</th>
            <th>name</th>
        </tr>
        <c:forEach var="cur" items="${cities.rows}">
            <tr>
                <td>${cur.CITY_ID}</td>
                <td>${cur.NAME}</td>       
            </tr>
        </c:forEach>
    </table>
</body>
</html>