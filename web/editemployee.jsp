
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.exavalu.models.Role"%>
<%@page import="com.exavalu.models.Department"%>
<%@page import="com.exavalu.services.RoleService"%>
<%@page import="com.exavalu.services.DepartmentService"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.exavalu.models.Employee"%>
<!doctype html> 
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.108.0">
        <title>Employee Management Data Update</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">

        <!-- Favicons -->
        <link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
        <link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
        <link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
        <meta name="theme-color" content="#712cf9">


        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/menu_css.css" rel="stylesheet">
        <link href="css/product.css" rel="stylesheet">
        <link href="css/signin.css" rel="stylesheet">
        <style>

            body{
                background-image: url('login_background_2.jpg') ;
                /*background-position: center center;*/
                background-size: cover;
                background-repeat: no-repeat;

            }
            .form-floating{
                margin-bottom: 10px;
            }

        </style>
    </head>
    <body class="text-center">
        <jsp:include page="menu.jsp"></jsp:include>
            <main class="form-signin w-100 m-auto">
   
            <c:set var="emp" value="${Emp}"/>
                <form action="SaveEmployee" method="post">
                    <h1 class="h3 mb-3 fw-normal">Please Update Details</h1>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="employeeId" name="employeeId" value="${emp.getEmployeeId()}" readonly>
                        <label for="floatingInput">Employee Id</label>
                    </div>

                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="firstName" name="firstName" value="${emp.getFirstName()}" >
                        <label for="floatingInput">First Name</label>
                    </div>

                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="lastName" name="lastName" value="${emp.getLastName()}">
                        <label for="floatingInput">Last Name</label>
                    </div>

                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="phone" name="phone" value="${emp.getPhone()}">
                        <label for="floatingInput">Phone</label>
                    </div>
                        
                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="address" name="address" value="${emp.getAddress()}">
                        <label for="floatingInput">Address</label>
                    </div>

                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="gender" name="gender" value="${emp.getGender()}">
                        <label for="floatingInput">Gender</label>
                    </div>

                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="age" name="age" value="${emp.getAge()}">
                        <label for="floatingInput">age</label>
                    </div>
<div class="form-floating">

                    <div class="form-floating">
                        <select name="departmentId" class="form-select" id="departmentId" required>
                            <c:forEach items="${DeptList}" var="dept" >
                                <option value=${dept.getDepartmentId()}<c:if test="${dept.getDepartmentName().equalsIgnoreCase(emp.getDepartmentName())}" > selected </c:if>> ${dept.getDepartmentName()} </option>
                            </c:forEach>
                        </select>
                        <label for="floatingInput">Department</label>
                    </div>
                </div>


                   <div class="form-floating">                  

                        <select name="roleId" class="form-select" id="roleId">
                            <c:forEach items="${RoleList}" var="role" >
                                <option value=${role.getRolesId()}<c:if test="${role.getRolesName().equalsIgnoreCase(emp.getRoleName())}" > selected </c:if> > ${role.getRolesName()}</option>
                            </c:forEach>
                            </select>
                            <label for="floatingInput">Role Name</label>
                        </div>

                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="basicSalary" name="basicSalary" value="${emp.getBasicSalary() }">
                        <label for="floatingInput">Basic Salary</label>
                    </div>

                    
                    <div class="form-floating">
                        <input type="text" class="form-control" id="floatingInput" placeholder="carAllaowance" name="carAllaowance" value="${emp.getCarAllaowance()}">
                        <label for="floatingInput">Car Allowance</label>
                    </div>



                    <button class="w-100 btn btn-lg btn-primary" type="submit">Save</button>

                    <p class="mt-5 mb-3 text-muted">&copy; 2023-2024 by Anwesha Bose</p>
                </form>           
            </main>

        </body>
    </html>
