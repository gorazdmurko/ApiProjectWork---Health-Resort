<%--
  Created by IntelliJ IDEA.
  User: Gorazd
  Date: 15/07/2022
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="testViewTag" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="button" tagdir="/WEB-INF/tags" %>

<html>
<head>
    <title>Drzava</title>
</head>
<body class="body">

<div align="center">
    <testViewTag:postneStevilkeCreate />
    <div>
        <form:form action="createPostneStevilke" modelAttribute="postnestevilke" method="post">
            <table>
                <tr class="inputFormRow form">
                    <td><form:input id="idPostneStevilke" path="id_postne_stevilke" type="number" /></td>
                    <td><b><form:label for="idPostneStevilke" path="id_postne_stevilke">ID POTSNE STEVILKE</form:label></b></td>
                </tr>
                <tr class="emptySpace">
                    <td>&nbsp</td>
                </tr>
                <tr class="inputFormRow form">
                    <td><form:input id="postnaStevilka" path="postna_stevilka" type="text" /></td>
                    <td><b><form:label for="postnaStevilka" path="postna_stevilka">POSTNA sTEVILKA</form:label></b></td>
                </tr>
                <tr class="emptySpace">
                    <td>&nbsp</td>
                </tr>
                <tr class="inputFormRow form">
                    <td><form:input id="kraj" path="kraj_mesto" type="text" /></td>
                    <td><b><form:label for="kraj" path="kraj_mesto">MESTO</form:label></b></td>
                </tr>
                <tr class="emptySpace">
                    <td>&nbsp</td>
                </tr>
                <tr class="inputFormRow form">
                    <td><form:input id="idDrzave" path="id_drzave" type="number" /></td>
                    <td><b><form:label for="idDrzave" path="id_drzave">ID DRZAVE</form:label></b></td>
                </tr>
                <tr class="emptySpace">
                    <td>&nbsp</td>
                </tr>
                <tr class="inputFormRow emptySpace" colspan="2">
                    <td><input class="action" type="submit" value="SAVE"></td>
                </tr>
            </table>
        </form:form>
    </div>
    <br />
    <div>
        <div class="inline">
            <c:set var="controllerUrl" value="postne_stevilke" />
            <form:form action="/ApiProjectWork/${controllerUrl}/get">
                <input type="submit" value="BACK" class="inputButton" />
            </form:form>
        </div>

        <div class="inline">
            <button:buttonHome />
        </div>
    </div>
</div>

</body>
</html>

<style>
    <%@ include file="/WEB-INF/static/css/global.css" %>
</style>