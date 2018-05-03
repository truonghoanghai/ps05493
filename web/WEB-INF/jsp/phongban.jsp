<%-- 
    Document   : phongban
    Created on : Apr 5, 2018, 5:21:58 PM
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
        <script src="js/jquery.min.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
        <script src="js/bootstrap.min.js"></script>
        <script>
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
                        <h3 class="page-header"><i class="fa fa-laptop"></i> Phòng Ban</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="#">Home</a></li>
                            <li><i class="fa fa-laptop"></i>Phòng Ban</li>
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
                <form:form action="phongban.htm" modelAttribute="Departs">
                    <div class="form-group">
                        <label>Mã Phòng Ban</label>
                        <form:input path="mapb" cssClass="form-control"/>
                    </div>
                    <div class="form-group">
                        <label>Tên Phòng Ban</label>
                        <form:input path="tenpb" cssClass="form-control"/>
                    </div>
                    <div class="form-group text-center">
                        <button name="btnInsert" class="btn btn-default">Insert</button>
                        <button name="btnUpdate" class="btn btn-default">Update</button>
                        <br>
                        
                    </div>

                    <div class="inbox-head">
                        <form action="#" class="pull-right position">
                            <div class="input-append">
                                <input class="input" name="txtSearch" value="" />
                        <button class="btt" name="btnSearch">Tìm Kiếm </button>
                            </div>
                        </form>
                    </div>
                    <button class="btn btn-default pull-right" style="margin-top:20px;" data-toggle="modal" data-target= "#item_add">
                        <i class="glyphicon glyphicon-plus"></i><a href="#">Thêm Nhân Viên</a></button>

                </form:form>
                <br>            
                <div class="inbox-body">
                    <div class="mail-option">
                        <table class="table table-inbox table-hover">				
                            <thead>
                                <tr class="unread">
                                    <th class="col-sm-2 view-message  dont-show">Mã Phòng Ban</th>
                                    <th class="view-message col-sm-3">Tên Phòng Ban</th>
                                    <th class="view-message col-sm-3">#</th>
                                    <th class="view-message col-sm-3">#</th>
                                </tr>
                            </thead>
                            <c:forEach var="rows" items="${listPhongBan}">
                                <form class="col-sm-2" action="phongban/delete.htm">                        
                                    <td class="view-message col-sm-3">${rows.mapb}</td>
                                    <td class="view-message col-sm-3">${rows.tenpb}</td>

                                    <c:url var="edit" value="phongban/edit.htm">
                                        <c:param name="txtMaPB" value="${rows.mapb}"/>
                                        <c:param name="txtTenPB" value="${rows.tenpb}"/>
                                    </c:url>
                                    <td class="view-message col-sm-3"><a href="${edit}">Edit</a></td>
                                    <td class="view-message col-sm-3">
                                        <input type="hidden" name="txtMaPB" value="${rows.mapb}"/>
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
