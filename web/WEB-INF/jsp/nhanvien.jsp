<%-- 
    Document   : nhanvien
    Created on : Apr 10, 2018, 12:58:30 PM
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
                        <h3 class="page-header"><i class="fa fa-laptop"></i>Nhân Viên</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="#">Home</a></li>
                            <li><i class="fa fa-laptop"></i>Nhân Viên</li>
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
                <form:form action="nhanvien.htm" modelAttribute="Staff">
                    <div class="form-group">
                        <label>Mã Nhân Viên</label>
                        <form:input path="manv" cssClass="form-control"/>
                    </div>

                    <div class="form-group">
                        <label>Tên Nhân Viên </label>
                        <form:input path="tennv" cssClass="form-control"/>
                    </div>

                    <div class="form-group">
                        <label>Giới Tính</label>
                        <div>
                            <form:radiobutton path="gioitinh" value="true" label="Nam"/>
                            <form:radiobutton path="gioitinh" value="false" label="Nữ"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Ngày Sinh</label>
                        <form:input path="ngaysinh" cssClass="form-control"/>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Ảnh</label>  
                        <div class="col-md-4">
                            <image src="img/${hinh}" style="width: 50%; height: 60%;  " />
                            <!--<input id="textinput" name="fullname" type="text" value="${hinh}" placeholder="Full Name" class="form-control input-md">-->
                            <input type="file" name="attach" value="${hinh}" class="form-control input-md">
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Email</label>
                        <form:input path="email" cssClass="form-control"/>
                    </div>
                    
                    <div class="form-group">
                        <label>Số Điện thoại</label>
                        <form:input path="sdt" cssClass="form-control"/>
                    </div>
                    
                    <div class="form-group">
                        <label>Lương</label>
                        <form:input path="luong" cssClass="form-control"/>
                    </div>
                    
                    <div class="form-group">
                        <label>Ghi Chú</label>
                        <form:input path="ghichu" cssClass="form-control"/>
                    </div>
                    
                    <div class="form-group">
                        <label>Cấp Độ</label>
                        <div>
                            <form:radiobutton path="capdo" value="true" label="Thành Tích"/>
                            <form:radiobutton path="capdo" value="false" label="Kỹ Luật"/>
                        </div>
                    </div>
                    

                    <div class="form-group">
                        <label>Mã Phòng Ban </label>
                        <form:select path="mapbid" cssClass="form-control"
                                     items="${PhongBan}" itemValue="mapb" itemLabel="tenpb"/>
                    </div>

                    <div class="form-group text-center">
                        <button name="btnInsert" class="btn btn-default">Insert</button>
                        <button name="btnUpdate" class="btn btn-default">Update</button>
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
                        <i class="glyphicon glyphicon-plus"></i> Thêm nhân viên
                    </button>   
                    </form:form>
                <br>            
                <div class="inbox-body">
                    <div class="mail-option">
                        <table class="table table-inbox table-hover">				
                            <thead>
                                <tr class="unread">
                                    <th class="col-sm-2 view-message  dont-show">Mã Nhân Viên</th>
                                    <th class="view-message col-sm-3">Tên Nhân viên</th>
                                    <th class="view-message col-sm-3">Giới Tính</th>
                                    <th class="view-message col-sm-3">Ngày Sinh</th>
                                    <th class="view-message col-sm-3">Hình</th>
                                    <th class="view-message col-sm-3">Email</th>
                                    <th class="view-message col-sm-3">Số Điện Thoại</th>
                                    <th class="view-message col-sm-3">Lương</th>
                                    <th class="view-message col-sm-3">Ghi Chú</th>
                                    <th class="view-message col-sm-3">Cấp Độ</th>
                                    <th class="view-message col-sm-3">Mã Phòng Ban</th>
                                    <th class="view-message col-sm-3">#</th>
                                    <th class="view-message col-sm-3">#</th>
                                </tr>
                            </thead>

                            <c:forEach var="rows" items="${listNhanVien}">
                                <form class="col-sm-2" action="nhanvien/delete.htm"> 
                                    <tr onclick="show()">
                                        
                                    <td class="view-message col-sm-3">${rows.manv}</td>
                                    <td class="view-message col-sm-3">${rows.tennv}</td>
                                    <td class="view-message col-sm-3"><c:if test="${rows.gioitinh=='true'}">Nam</c:if>
                                        <c:if test="${rows.gioitinh=='false'}">Nữ</c:if></td>
                                    <td class="view-message col-sm-3">${rows.ngaysinh}</td>
                                    <td class="view-message col-sm-3"><img src="img/${rows.hinh}" style="width: 50px;height: 50px"/></td>
                                    <td class="view-message col-sm-3">${rows.email}</td>
                                    <td class="view-message col-sm-3">${rows.sdt}</td>
                                    <td class="view-message col-sm-3">${rows.luong}</td>
                                    <td class="view-message col-sm-3">${rows.ghichu}</td>
                                    <td class="view-message col-sm-3"><c:if test="${rows.capdo=='true'}">Thành Tích</c:if>
                                        <c:if test="${rows.capdo=='false'}">Kỹ Luật</c:if></td>
                                    <td class="view-message col-sm-3">${rows.mapbid}</td>
                                    <td><a href="Rate.htm?staffid=${rows.manv}">Rate</a></td>
                                    <c:url var="edit" value="nhanvien/edit.htm">
                                        <c:param name="txtMaNV" value="${rows.manv}"/>
                                        <c:param name="txtTenNV" value="${rows.tennv}"/>
                                        <c:param name="txtGioitinh" value="${rows.gioitinh}"/>
                                        <c:param name="txtNgaysinh" value="${rows.ngaysinh}"/>
                                        <c:param name="txtHinh" value="${rows.hinh}"/>
                                        <c:param name="txtEmail" value="${rows.email}"/>
                                        <c:param name="txtSDT" value="${rows.sdt}"/>
                                        <c:param name="txtLuong" value="${rows.luong}"/>
                                        <c:param name="txtGhichu" value="${rows.ghichu}"/>
                                        <c:param name="txtCapdo" value="${rows.capdo}"/>
                                        <c:param name="txtMaPBid" value="${rows.mapbid}"/>
                                    </c:url>
                                    <td class="view-message col-sm-3"><a href="${edit}">Edit</a></td>
                                    <td class="view-message col-sm-3">
                                        <input type="hidden" name="txtMaNV" value="${rows.manv}"/>
                                        <input type="submit" name="action" value="Delete"/>
                                    </td>
                                    </tr>
                                </form>
                            </c:forEach>

                        </table>
                    </div>
                </div>
                <script>
                    function show(){
                        
                        
                        
                    }
                    </script>
                </body>
                </html>
