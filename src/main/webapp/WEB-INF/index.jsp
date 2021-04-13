<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
         Forside
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>

        <div>
            <h2>BMI beregner</h2>

            <form method="post" action="fc/bmiresult">
                <label for="height" class="mt-3">Højde i cm: </label>
                <input type="text" id="height" name="height" class="form-control w-50 mt-2">

                <label for="height" class="mt-3">Vægt i kg: </label>
                <input type="text" id="weight" name="weight" class="form-control w-50 mt-2">

                <button type="submit" class="mt-3 btn btn-light">Beregn BMI</button>
            </form>




            <c:if test="${sessionScope.role == 'employee' }">
                <p style="font-size: larger">This is what you can do,
                    since your are logged in as an employee</p>
                 <p><a href="fc/employeepage">Employee Page</a>
             </c:if>

             <c:if test="${sessionScope.role == 'customer' }">
                <p style="font-size: larger">This is what you can do, since your
                    are logged in as a customer</p>
                <p><a href="fc/customerpage">Customer Page</a>
            </c:if>

        </div>

    </jsp:body>
</t:genericpage>