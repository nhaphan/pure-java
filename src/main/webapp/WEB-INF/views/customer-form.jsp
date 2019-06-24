<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: harry
  Date: 23/06/2019
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Form</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/add-customer-style.css">
</head>
<body>
    <div id="wrapper">
        <div id="header">
            <h2>CRM - Customer Relationship Manger</h2>
        </div>
    </div>

    <div id="container">
        <h3>Save Customer</h3>
        <form:form action="saveCustomer" modelAttribute="customer" method="post">

            <form:hidden path="id" />

            <table>
                <tbody>
                    <tr>
                        <td><label for="firstName">First Name: </label></td>
                        <td><form:input path="firstName" /> </td>
                    </tr>
                    <tr>
                        <td><label for="lastName">Last Name: </label></td>
                        <td><form:input path="lastName"/></td>
                    </tr>
                    <tr>
                        <td><label for="email">Email: </label></td>
                        <td><form:input path="email" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Save" class="save"></td>
                    </tr>

                </tbody>

            </table>
        </form:form>
        <p>
            <a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
        </p>
    </div>
</body>
</html>
