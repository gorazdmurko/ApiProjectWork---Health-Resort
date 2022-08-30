<%--
  Created by IntelliJ IDEA.
  User: Gorazd
  Date: 22/08/2022
  Time: 09:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="button" tagdir="/WEB-INF/tags" %>

<html>
<head>
    <title>API</title>
</head>
<body class="body">
<div align="center">
    <h1>SOBE STATUSI</h1>
    <div>
        <table style="border: blueviolet" border="1">
            <tr>
                <th style="color: mediumvioletred"> - ID SOBE STATUSI - </th>
                <th style="color: mediumvioletred"> - SOBE STATUS - </th>
            </tr>
            <!-- "blagajne" is the key value (attributeName) in our BlagajnaController method -->
            <c:forEach var="status" items="${sobe_statusi}">
                <tr>
                    <td>${status.id_sobe_statusi}</td>
                    <td>${status.sobe_status}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <br />
    <div>
        <div>
            <c:set var="controllerUrl" value="sobe-statusi" />
            <form:form action="/ApiProjectWork/${controllerUrl}/get">
                <input type="submit" value="BACK" class="inputButton" />
            </form:form>
        </div>

        <button:buttonHome />
    </div>
</div>
</body>
<style>
    /* CSS */
    <%@ include file="/WEB-INF/static/css/global.css" %>
</style>
</html>
