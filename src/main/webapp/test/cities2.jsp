<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cities</title>
<link rel="icon" href="data:;base64,=">
</head>
<body>
    <h1>cities by JSTL</h1>
    <table>
        <tr>
            <th>id</th>
            <th>name</th>
        </tr>
        <c:forEach var="cur" items="${cities}">
            <tr>
                <td>${cur.id}</td>
                <td>${cur.name}</td>       
            </tr>
        </c:forEach>
    </table>
</body>
</html>