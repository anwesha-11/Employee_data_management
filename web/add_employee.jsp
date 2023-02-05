<%-- 
    Document   : add_employee
    Created on : 03-Feb-2023, 2:46:48 am
    Author     : anwes
--%>

<%@page import="com.exavalu.models.Role"%>
<%@page import="com.exavalu.services.RoleService"%>
<%@page import="com.exavalu.models.Department"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.exavalu.services.DepartmentService"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Employee</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/menu_css.css" rel="stylesheet">
        <link href="css/product.css" rel="stylesheet">
        <link href="css/signin.css" rel="stylesheet">

    </head>
    <body class="text-center">
        <jsp:include page="menu.jsp"></jsp:include>
            <main class="form-signin w-100 m-auto">

                <form action="AddEmployee" method="post">
                    <h1 class="h3 mb-3 fw-normal">Please Add Employee Details</h1>
                <c:if test="${ErrorMsg!= null}">
                    <div class="alert alert-danger" role="alert">
                        <c:out value="${ErrorMsg}"/>
                    </div>  
                </c:if>

                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput" placeholder="firstName" name="firstName" required="required" >
                    <label for="floatingInput">First Name</label>
                </div>

                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput" placeholder="lastName" name="lastName" required="required">
                    <label for="floatingInput">Last Name</label>
                </div>

                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput" placeholder="phone" name="phone" required="required">
                    <label for="floatingInput">Phone</label>
                </div>

                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput" placeholder="address" name="address" required="required">
                    <label for="floatingInput">Address</label>
                </div>


                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput" placeholder="gender" name="gender" required="required">
                    <label for="floatingInput">Gender</label>
                </div>

                <div class="form-floating">
                    <input type="number" class="form-control" id="floatingInput" placeholder="age" name="age" required="required">
                    <label for="floatingInput">Age</label>
                </div>
                <div class="filed_style">

                    <c:set var="department" value="${DepartmentService.getAllDepartment()}"></c:set>
                        <label for="departmentId">Department</label>
                        <select name="departmentId" class="form-select" id="departmentId">
                            <option value="0">Select Department </option>

                        <c:forEach var="dept" items="${department}" >
                            <option value=${dept.getDepartmentId()} >${dept.getDepartmentName()}  </option>  

                        </c:forEach>

                    </select>
                </div>


                <div class="filed_style">
                    <label for="floatingInput">Role</label>
                    <c:set var="role" value="${RoleService.getAllRoles()}"></c:set>
                        <select name="roleId" class="form-select" id="roleId">
                            <option value="0">Select Role </option>

                        <c:forEach var="rol" items="${role}" >
                            <option value=${rol.getRolesId()} >${rol.getRolesName()}  </option>

                        </c:forEach>

                    </select>
                </div>
                <div class="form-floating">
                    <input type="number" class="form-control" id="floatingInput" placeholder="basicSalary" name="basicSalary" required="required">
                    <label for="floatingInput">Basic Salary</label>
                </div>


                <div class="form-floating">
                    <input type="number" class="form-control" id="floatingInput" placeholder="carAllaowance" name="carAllaowance" required="required">
                    <label for="floatingInput">Car Allowance</label>
                </div>



                <button class="w-100 btn btn-lg btn-primary" type="submit">ADD DATA</button>
            </form>
        </main>

        <p class="mt-5 mb-3 text-muted">&copy; 2023-2024 by Anwesha Bose</p>
    </body>
</html>
