<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="en">
    <head>
        <!-- Head -->
        <%@include file="include/head.jspf"  %>
    </head>
    <body style="padding: 10px">

        <div id="layout">
            <!-- Toggle -->
            <%@include file="include/toggle.jspf"  %>

            <!-- Menu -->
            <%@include file="include/menu.jspf"  %>

            <div id="main">
                <div class="header">
                    <h1>部門</h1>
                    <h2></h2>
                </div>
                <table class="pure-table" style="border: none;">
                    <td valign="top">
                        <!-- 表單 -->
                        <form:form class="pure-form" 
                                   modelAttribute="emp" 
                                   method="post" 
                                   action="${pageContext.request.contextPath}/mvc/" >

                        </form:form>
                    </td>
                    <td valign="top">
                        <!-- 列表 -->
                        <form class="pure-form">
                            <fieldset>
                                <legend>Dept list</legend>
                                <table class="pure-table pure-table-bordered" width="100%">
                                    <thead>
                                        <tr>
                                            <th>id</th>
                                            <th>name</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <c:forEach var="dept" items="${ dept.list }">
                                            <tr>
                                                <td>${ dept.id   } </td>
                                                <td>${ dept.name }</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table> 
                            </fieldset>
                        </form>
                    </td>
                    <td valign="top">
                        <!-- 圖表 -->
                        <form class="pure-form">
                            <fieldset>
                                <legend>Dept chart</legend>

                            </fieldset>
                        </form>
                    </td>
                </table>   


            </div>
        </div>

        <!-- Foot -->
        <%@include file="include/foot.jspf"  %>

        <script src="${pageContext.servletContext.contextPath}/js/ui.js"></script>
    </body>
</html>