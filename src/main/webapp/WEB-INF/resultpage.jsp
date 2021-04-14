<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
         Resultatside for beregning af BMI
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${true}" scope="request"/>
    </jsp:attribute>

    <jsp:body>

        <div>
            <h2>BMI Result</h2>

            <table class="table mt-4">
                <thead>
                    <tr>
                        <th>Højde</th>
                        <th>Vægt</th>
                        <th>BMI</th>
                        <th>Værdi</th>
                    </tr>
                </thead>
                    <tr>
                        <td>${requestScope.height}</td>
                        <td>${requestScope.weight}</td>
                        <td>${requestScope.bmi}</td>
                        <td>${requestScope.category}</td>
                    </tr>
            </table>

        </div>

    </jsp:body>
</t:genericpage>