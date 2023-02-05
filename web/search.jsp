<%-- 
    Document   : searchemployee
    Created on : 24-Jan-2023, 4:00:04 pm
    Author     : anwes
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="com.exavalu.services.RoleService"%>
<%@page import="com.exavalu.services.DepartmentService"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Search</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/menu_css.css" rel="stylesheet">
        <link href="css/product.css" rel="stylesheet">
        <link rel="stylesheet" href="css/search_css.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css"/>
        <style>
            #example_wrapper{
                width: 75%;
                display: block;
                margin: auto;
            }
        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <h1>Search Employee</h1>
            <form action="SearchEmployee" method="post" class="form_style">
                <div class="filed_style">
                    <label for="floatingInput">First Name</label>
                    <input type="text" class="" id="floatingInput" placeholder="Search FirstName wise" name="firstName">

                </div>
                <div class="filed_style">
                    <label for="floatingInput">Last Name</label>
                    <input type="text" class="" id="floatingInput" placeholder="Search LastName wise" name="lastName" >
                </div>
                <div class="filed_style">
                    <label for="floatingInput">Gender</label>
                    <input type="text" class="" id="floatingInput" placeholder="Search Gender wise" name="gender">
                </div>

                <div class="filed_style">
                    <label for="departmentId">Department</label>
                    <select name="departmentId" class="form-select" id="departmentId">
                        <option value="0">Select Department </option>
                    <c:forEach items="${DepartmentService.getAllDepartment()}" var="dept">   
                        <option value="${dept.getDepartmentId()}" > <c:out value="${dept.getDepartmentName()}"/> </option>
                    </c:forEach>
                </select>
            </div>

            <div class="filed_style">
                <label for="floatingInput">Role</label>
                <select name="roleId" class="form-select" id="roleId">
                    <option value="0">Select Role </option>
                    <c:forEach items="${RoleService.getAllRoles()}" var="role">   
                        <option value="${role.getRolesId()}" > <c:out value="${role.getRolesName()}"/>  </option>
                    </c:forEach>
                </select>
            </div>
            <button class="filed_style" type="submit">Search</button>
        </form>



        <c:set var="empList" value="${ShowEmpList}" />
        <c:if test="${empList!=null}">
            <table id="example" class="table table-striped border">
                <thead>
                    <tr class="backgroud_colorha">
                        <th>
                            Employee Id
                        </th>
                        <th>
                            First Name
                        </th>
                        <th>
                            Last Name
                        </th>
                        <th>
                            Phone Number
                        </th>
                         <th>
                            Address
                        </th>
                        <th>
                            Gender
                        </th>
                        <th>
                            Age
                        </th>
                        <th>
                            Department Name
                        </th>
                        <th>
                            Role Name
                        </th>
                        <th>
                            Basic Salary
                        </th>
                       
                        <th>
                            Car Allowance
                        </th>
                        <th>
                            Action
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${ShowEmpList}" var="emp">
                        <tr>
                            <td>
                                <c:out value="${emp.getEmployeeId()}"/>
                            </td>
                            <th scope="row">
                                <c:out value="${emp.getFirstName()}"/>
                            </th>
                            <th scope="row">
                                <c:out value="${emp.getLastName()}"/>
                            </th>
                            <td>
                                <c:out value="${emp.getPhone()}"/>
                            </td>
                             <td>
                                <c:out value="${emp.getAddress()}"/>
                            </td>
                            <td>
                                <c:out value="${emp.getGender()}"/>
                            </td>
                            <td>
                                <c:out value="${emp.getAge()}"/>
                            </td>
                            <td>
                                <c:out value="${emp.getDepartmentName()}"/>
                            </td>
                            <td>
                                <c:out value="${emp.getRoleName()}"/>
                            </td>
                            <td>
                                <c:out value="${emp.getBasicSalary()}"/>
                            </td>
                           
                            <td>
                                <c:out value="${emp.getCarAllaowance()}"/>
                            </td>
                            <td> 
                                <a href=EditEmployee?id=${emp.getEmployeeId()}>
                                    Edit</a>                     
                            </td>
                        </tr>

                    </c:forEach>
                </tbody>
            </table>
        </c:if>


    </body>
</html>