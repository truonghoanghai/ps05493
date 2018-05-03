<%-- 
    Document   : mailer
    Created on : Apr 12, 2018, 1:41:22 PM
    Author     : hoanghai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base href="${pageContext.servletContext.contextPath}/">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send mail</title>
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
    </head>
    <body>
        <jsp:include page="/WEB-INF/jsp/header.jsp"/>
        <jsp:include page="/WEB-INF/jsp/aside.jsp"/>
        <section id="main-content">
            <section class="wrapper">
                <!--overview start-->
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-laptop"></i>Liên Hệ</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="#">Home</a></li>
                            <li><i class="fa fa-laptop"></i>Liên Hệ</li>
                        </ol>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-6">
                        <div class="recent">
                            <h3>Send us a message</h3>
                        </div>
                        ${message}
                        <form action="send2.htm" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <input type="text" name="from" class="form-control" id="name" placeholder="Email Form" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" name="to" id="email" placeholder="Email To" data-rule="email" data-msg="Please enter a valid email" />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" name="body" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                                <div class="validation"></div>
                            </div>
                            <div>
                                <input type="file" name="attach" size="60" />
                            </div>

                            <div class="text-center"><button  class="btn btn-primary btn-lg">Send Message</button></div>
                        </form>
                    </div>

                    <div class="col-lg-6">
                        <div class="recent">
                            <h3>Get in touch with us</h3>
                        </div>
                        <div class="">
                            <p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum.</p>
                            <p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum.</p>

                            <h4 >Address:</h4>Little Lonsdale St, New York<br>
                            <h4>Telephone:</h4>345 578 59 45 416</br>
                            <h4>Fax:</h4>123 456 789
                        </div>
                    </div>
                </div>
                </div>
                </form>
                </body>
                </html>
