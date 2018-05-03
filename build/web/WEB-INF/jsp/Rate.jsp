<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Ultra Modern an Admin Panel Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Ultra Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- Custom CSS -->
        <link href="css/style_1.css" rel="stylesheet" type="text/css"/>
        <!-- font CSS -->
        <!-- font-awesome icons -->
        <link href="css/font-awesome_1.css" rel="stylesheet"> 
        <!-- //font-awesome icons -->
        <!--skycons-icons-->
        <script src="js/skycons.js"></script>
        <!--//skycons-icons-->

        <!-- js-->
        <script src="js/bootstrap_1.js"></script>
        <script src="js/jquery-1.11.1.min_1.js"></script>
        <script src="js/modernizr.custom_1.js"></script>
        <!--webfonts-->
        <link href='//fonts.googleapis.com/css?family=Comfortaa:400,700,300' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Muli:400,300,300italic,400italic' rel='stylesheet' type='text/css'>
        <!--//webfonts-->  
        <!-- Metis Menu -->
        <script src="js/metisMenu.min.js"></script>
        <script src="js/custom.js"></script>
        <link href="css/custom.css" rel="stylesheet">
        <!--//Metis Menu -->
        <link href="css/jquerysctipttop.css" rel="stylesheet" type="text/css">
        <script src="js/jquery.sparkline.min.js"></script>
        <script type="text/javascript">
            /* <![CDATA[ */
            $(function () {
                /** This code runs when everything has been loaded on the page */
                /* Inline sparklines take their values from the contents of the tag */
                $('.inlinesparkline').sparkline();

                /* Sparklines can also take their values from the first argument passed to the sparkline() function */
                var myvalues = [10, 8, 5, 7, 4, 4, 1];
                $('.dynamicsparkline').sparkline(myvalues);

                /* The second argument gives options such as specifying you want a bar chart11 */
                $('.dynamicbar').sparkline(myvalues, {type: 'bar', barColor: '#fff'});

                /* Use 'html' instead of an array of values to pass options to a sparkline with data in the tag */
                $('.inlinebar').sparkline('html', {type: 'bar', barColor: '#fff'});

            });
            /* ]]> */
        </script>
        <script src="js/Chart_1.js"></script>

        <!--pie-chart--->
        <script src="js/pie-chart.js" type="text/javascript"></script>
        <script type="text/javascript">

            $(document).ready(function () {
                $('#demo-pie-1').pieChart({
                    barColor: '#68b828',
                    trackColor: '#eee',
                    lineCap: 'round',
                    lineWidth: 10,
                    onStep: function (from, to, percent) {
                        $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                    }
                });

                $('#demo-pie-2').pieChart({
                    barColor: '#7c38bc',
                    trackColor: '#eee',
                    lineCap: 'butt',
                    lineWidth: 10,
                    onStep: function (from, to, percent) {
                        $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                    }
                });

                $('#demo-pie-3').pieChart({
                    barColor: '#0e62c7',
                    trackColor: '#eee',
                    lineCap: 'square',
                    lineWidth: 10,
                    onStep: function (from, to, percent) {
                        $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                    }
                });


            });

        </script>
        <!--Calender-->
        <link rel="stylesheet" href="css/clndr_1.css" type="text/css" />
        <script src="js/underscore-min_1.js" type="text/javascript"></script>
        <script src= "js/moment-2.2.1_1.js" type="text/javascript"></script>
        <script src="js/clndr_1.js" type="text/javascript"></script>
        <script src="js/site_1.js" type="text/javascript"></script>
        <!--End Calender-->
    </head> 
    <body class="cbp-spmenu-push">
        <div class="main-content">
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
            <div id="page-wrapper">
                <form action="addrecord.htm" method="post">
                    <div class="form-grid1">
                        <h4><span>Đánh giá</span> Nhân viên</h4>
                        <div class="bottom-form">
                            <div class="col-md-3 grid-form">
                                <input type="hidden" value="${manv}" name="staffid"/>
                                <h5>Tên nhân viên</h5>
                            </div>
                            <div class="col-md-9 grid-form1">
                                <p>${tennv}</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="bottom-form">
                            <div class="col-md-3 grid-form">
                                <h5>select</h5>
                            </div>
                            <div class="col-md-9 grid-form1">
                                <select class="ser" name="type">
                                    <option value="Good">Khen thưởng</option>
                                    <option value="bad">Phàn nàn</option>
                                </select>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="bottom-form">
                            <div class="col-md-3 grid-form">
                                <h5>Lý do</h5>
                            </div>
                            <div class="col-md-9 grid-form1">
                                <input type="text" name="reason" placeholder="Lý do...">
                                <span>Lý do đánh giá</span>
                            </div>
                            <div class="clearfix"></div>
                        </div>


                        <div class="bottom-form">
                            <div class="col-md-3 grid-form">
                                <h5>Button</h5>
                            </div>
                            <div class="col-md-9 grid-form1">
                                <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-angle-right"></i> submit</button>
                                <button type="reset" class="btn btn-sm btn-warning"><i class="fa fa-repeat"></i> Reset</button>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </form>
            </div>
            
        </div>
        <!-- Classie -->
        <script src="js/classie.js"></script>
        <script>
            var menuLeft = document.getElementById('cbp-spmenu-s1'),
                    showLeftPush = document.getElementById('showLeftPush'),
                    body = document.body;

            showLeftPush.onclick = function () {
                classie.toggle(this, 'active');
                classie.toggle(body, 'cbp-spmenu-push-toright');
                classie.toggle(menuLeft, 'cbp-spmenu-open');
                disableOther('showLeftPush');
            };


            function disableOther(button) {
                if (button !== 'showLeftPush') {
                    classie.toggle(showLeftPush, 'disabled');
                }
            }
        </script>
        <!-- Bootstrap Core JavaScript --> 

        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!--scrolling js-->
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>
        <link href="css/bootstrap_1.min.css" rel="stylesheet">

        <!--//scrolling js-->
        <div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content modal-info">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <div class="modal-body">
                        <div class="more-grids">
                            <h3>New Message </h3>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- //Register -->


    </body>
</html>
