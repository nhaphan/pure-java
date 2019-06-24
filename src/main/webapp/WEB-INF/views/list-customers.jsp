<%--
  Created by IntelliJ IDEA.
  User: harry
  Date: 21/06/2019
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Customers</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<h1>Customer List</h1>

<div id="container">
    <div id="content">
        <input class="add-button"
               type="button"
               value="Add Customer"
               onclick="window.location.href='/customer/showFormForAdd'; return false;" />

        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Action</th>
            </tr>
            <c:forEach var="customer" items="${customers}" >
                <c:url var="updateLink" value="/customer/showFormForUpdate">
                    <c:param name="customerId" value="${customer.id}" />
                </c:url>

                <c:url var="deleteLink" value="/customer/delete">
                    <c:param name="customerId" value="${customer.id}" />
                </c:url>



                <tr>
                    <td>${customer.firstName}</td>
                    <td>${customer.lastName}</td>
                    <td>${customer.email}</td>
                    <td>
                        <a href="${updateLink}">Update</a> |
                        <a href="${deleteLink}"
                           onclick="if(!(confirm('Are you sure you want to delete this customer?')));">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
