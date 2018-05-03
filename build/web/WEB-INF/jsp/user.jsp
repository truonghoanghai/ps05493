<%-- 
    Document   : user
    Created on : Apr 6, 2018, 6:10:20 PM
    Author     : hoanghai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <base href="${pageContext.servletContext.contextPath}/">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- bootstrap theme -->
        <link href="css/bootstrap-theme.css" rel="stylesheet">
        <!--external css-->
        <!-- font icon -->
        <link href="css/elegant-icons-style.css" rel="stylesheet" />
        <link href="css/font-awesome.min.css" rel="stylesheet" />
        <!-- full calendar css-->
        <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
        <link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
        <!-- easy pie chart-->
        <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
        <!-- owl carousel -->
        <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
        <link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
        <!-- Custom styles -->
        <link rel="stylesheet" href="css/fullcalendar.css">
        <link href="css/widgets.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet" />
        <link href="css/xcharts.min.css" rel=" stylesheet">
        <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
        <script>
            //<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#product_view"><i class="fa fa-search"></i> Quick View</button>
            function myFunction(x) {
                $("#item_view").modal();
            }
            ;
        </script>

    </head>
    <body>
        <jsp:include page="/WEB-INF/jsp/header.jsp"/>
        <jsp:include page="/WEB-INF/jsp/aside.jsp"/>
        <section id="main-content">
            <section class="wrapper">
                <!--overview start-->
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-laptop"></i>Users</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="#">Home</a></li>
                            <li><i class="fa fa-laptop"></i>Users</li>
                        </ol>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div class="info-box blue-bg">
                            <i class="fa fa-cloud-download"></i>
                            <div class="count">6.674</div>
                            <div class="title">Download</div>
                        </div>
                        <!--/.info-box-->
                    </div>
                    <!--/.col-->

                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div class="info-box brown-bg">
                            <i class="fa fa-shopping-cart"></i>
                            <div class="count">7.538</div>
                            <div class="title">Purchased</div>
                        </div>
                        <!--/.info-box-->
                    </div>
                    <!--/.col-->

                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div class="info-box dark-bg">
                            <i class="fa fa-thumbs-o-up"></i>
                            <div class="count">4.362</div>
                            <div class="title">Order</div>
                        </div>
                        <!--/.info-box-->
                    </div>
                    <!--/.col-->

                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div class="info-box green-bg">
                            <i class="fa fa-cubes"></i>
                            <div class="count">1.426</div>
                            <div class="title">Stock</div>
                        </div>
                        <!--/.info-box-->
                    </div>
                    <!--/.col-->

                </div>
                <form:form action="user.htm" modelAttribute="user">
                    <div class="form-group">
                        <label>Username</label>
                        <form:input path="username" cssClass="form-control"/>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <form:input path="password" cssClass="form-control"/>
                    </div>
                    <div class="form-group">
                        <label>Fullname</label>
                        <form:input path="fullname" cssClass="form-control"/>
                    </div>

                    <div class="form-group text-center">
                        <button name="btnInsert" class="btn btn-default">Insert</button>
                        <button name="btnUpdate" class="btn btn-default">Update</button>
                    </div>
                    
                    <!--chức năng tìm kiếm-->
                    <div class="inbox-head">
                        <form action="#" class="pull-right position">
                            <div class="input-append">
                                <input class="input" name="txtSearch" value="" />
                                <button class="btt" name="btnSearch">Tìm Kiếm </button>
                            </div>
                        </form>
                    </div>
                    <button class="btn btn-default pull-right" style="margin-top:20px;" data-toggle="modal" data-target= "#item_add"><i class="glyphicon glyphicon-plus"></i> Thêm nhân viên</button>
                </form:form>
                <br>            
                <div class="inbox-body">
                    <div class="mail-option">
                        <table class="table table-inbox table-hover">				
                            <thead>
                                <tr class="unread">
                                    <th class="col-sm-2 view-message  dont-show">Username</th>
                                    <th class="view-message col-sm-3">Password</th>
                                    <th class="view-message col-sm-3">Họ Và Tên</th>
                                    <th class="view-message col-sm-3">#</th>
                                    <th class="view-message col-sm-3">#</th>
                                </tr>
                            </thead>
                            <c:forEach var="rows" items="${listUser}">
                                <form action="user/delete.htm">
                                    <tr>
                                        <td class="view-message col-sm-3">${rows.username}</td>
                                        <td class="view-message col-sm-3">${rows.password}</td>
                                        <td class="view-message col-sm-3">${rows.fullname}</td>
                                        <c:url var="edit" value="user/edit.htm">
                                            <c:param name="txtUsername" value="${rows.username}"/>
                                            <c:param name="txtPassword" value="${rows.password}"/>
                                            <c:param name="txtFullname" value="${rows.fullname}"/>
                                        </c:url>
                                        <td class="view-message col-sm-3"><a href="${edit}">Edit</a></td>
                                        <td class="view-message col-sm-3">
                                            <input type="hidden" name="txtUsername" value="${rows.username}"/>
                                            <input type="submit" name="action" value="Delete"/>
                                        </td>
                                    </tr>
                                </form>
                            </c:forEach>   
                        </table>
                    </div>
                </div>
                <div class="text-center">
                    <ul class="pagination">
                        <li class="disabled"><span>«</span></li>
                        <li class="active"><span>1</span></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li class="disabled"><span>...</span></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#" rel="next">»</a></li>
                    </ul>
                </div>
                </body>
                </html>
