<%-- 
    Document   : index
    Created on : Dec 10, 2022, 2:34:53 PM
    Author     : debora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Formularios.LoginForm"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Brnd-logo Website Template | Home :: w3layouts</title>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <!-- Custom Theme files -->
        <!---- start-smoth-scrolling---->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!---- start-smoth-scrolling---->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    </script>
    <!----webfonts--->
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
    <!---//webfonts--->
    <!----start-top-nav-script---->
    <script>
        $(function () {
            var pull = $('#pull');
            menu = $('nav ul');
            menuHeight = menu.height();
            $(pull).on('click', function (e) {
                e.preventDefault();
                menu.slideToggle();
            });
            $(window).resize(function () {
                var w = $(window).width();
                if (w > 320 && menu.is(':hidden')) {
                    menu.removeAttr('style');
                }
            });
        });
    </script>
    <!----//End-top-nav-script---->
</head>
<body>
    <!----container---->
    <div class="container">
        <!----top-header---->
        <div class="top-header">
            <div class="logo">
                <a href="index.jsp"><img src="images/logo.png" title="brandlogo" /></a>
            </div>
            <div class="top-header-info">
                <div class="cart-details">
                    <div class="login-rigister">
                        <ul class="unstyled-list list-inline">
                            <li><a class="login" href="#LoginForm">Login</a></li>
                            <li><a class="rigister" href="#">REGISTER <span> </span></a></li>
                            <div class="clearfix"> </div>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <!----//top-header---->
        <!---top-header-nav---->
        <div class="top-header-nav"> 
            <!----start-top-nav---->
            <nav class="top-nav main-menu">
                <ul class="top-nav">
                    <li><a href="products.html">FASES DE LA VIDA</a><span> </span></li>
                    <li><a href="products.html">POR DONDE HE ANDADO</a><span> </span></li>
                    <li><a href="products.html">RECUERDOS INOLVIDABLES</a><span> </span></li>
                    <li><a href="products.html">MARCAS QUE RECOMENDO</a><span> </span></li>
                    <li><a href="products.html">SOBRE MI</a></li>
                    <div class="clearfix"> </div>
                </ul>
                <a href="#" id="pull"><img src="images/nav-icon.png" title="menu" /></a>
            </nav>
            <!----End-top-nav---->
            <!---top-header-search-box--->
            <div class="top-header-search-box">
                <form>
                    <input type="text" placeholder="Buscar" required / maxlength="22">
                    <input type="submit" value=" " >
                </form>
            </div>
            <!---top-header-search-box--->
            <div class="clearfix"> </div>
        </div>
    </div>
    <!--//top-header-nav---->
    <!----start-slider-script---->
    <script src="js/responsiveslides.min.js"></script>
    <script>
        // You can also use "$(window).load(function() {"
        $(function () {
            // Slideshow 4
            $("#slider4").responsiveSlides({
                auto: true,
                pager: true,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });

        });
    </script>
    <!----//End-slider-script---->
    <!-- Slideshow 4 -->
    <div  id="top" class="callbacks_container">
        <ul class="rslides" id="slider4">
            <li>
                <img src="images/slide1.png" alt="">
                <div class="caption">
                    <div class="slide-text-info">
                        <h1>ZAPATITO DE BEBE</h1>
                        <label>Mi Ni??ez</label>
                        <a class="slide-btn" href="#"><small>ACCEDER</small><label> </label></a>
                    </div>
                </div>
            </li>
            <li>
                <img src="images/slide2.png" alt="">
                <div class="caption">
                    <div class="slide-text-info">
                        <h1>AVENTURAS MIL</h1>
                        <label>Mi Juventud</label>
                        <a class="slide-btn" href="#"><small>ACCEDER</small><label> </label></a>
                    </div>
                </div>
            </li>
            <li>
                <img src="images/slide3.png" alt="">
                <div class="caption">
                    <div class="slide-text-info">
                        <h1>PIES EN EN SUELO</h1>
                        <label>Adulto de los adultos</label>
                        <a class="slide-btn" href="#"><small>ACCEDER</small><label> </label></a>
                    </div>
                </div>
            </li>
            <li>
                <img src="images/slide4.png" alt="">
                <div class="caption">
                    <div class="slide-text-info">
                        <h1>QUIERO SOLO PLAYA</h1>
                        <label>Jubiladazo</label>
                        <a class="slide-btn" href="#"><small>ACCEDER</small><label> </label></a>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <div class="clearfix"> </div>
    <!----- //End-slider---->
    <!----content---->
    <div class="content">
        <div class="container">
            <!---top-row--->
            <div class="top-row">
                <div class="col-xs-4">
                    <div class="top-row-col1 text-center">
                        <h2>CON ESTILO</h2>
                        <img class="r-img text-center" src="images/img-w.jpg" title="name" />
                        <span><img src="images/obj1.png" title="name" /></span>
                        <h4>TOTAL</h4>
                        <label>7 ZAPATOS</label>
                        <a class="r-list-w" href="single-page.html"><img src="images/list-icon.png" title="list" /></a>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="top-row-col1 text-center">
                        <h2>CASUAL</h2>
                        <img class="r-img text-center" src="images/man-r-img.jpg" title="name" />
                        <span><img src="images/obj2.png" title="name" /></span>
                        <h4>TOTAL</h4>
                        <label>5 ZAPATOS</label>
                        <a class="r-list-w" href="single-page.html"><img src="images/list-icon.png" title="list" /></a>
                    </div>
                </div>
                <div class="col-xs-4">
                    <div class="top-row-col1 text-center">
                        <h2>DEPORTIVO</h2>
                        <img class="r-img text-center" src="images/volei-r-img.jpeg" title="name" />
                        <span><img src="images/obj3.png" title="name" /></span>
                        <h4>TOTAL</h4>
                        <label>9 ZAPATOS</label>
                        <a class="r-list-w" href="single-page.html"><img src="images/list-icon.png" title="list" /></a>
                    </div>
                </div>
                <vdi class="clearfix"> </div>
        </div>
        <!---top-row--->
        <div class="container"> 
            <!----special-products---->
            <div class="special-products">
                <div class="s-products-head">
                    <div class="s-products-head-left">
                        <h3>MI COLECCI??N <span>PERSONAL</span></h3>
                    </div>
                    <div class="s-products-head-right">
                        <a href="products.html"><span> </span>ver todos zapatos</a>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <!----special-products-grids---->
                <div class="special-products-grids">
                    <div class="col-md-3 special-products-grid text-center">
                        <a class="brand-name" href="single-page.html"><img src="images/b1.jpg" title="name" /></a>
                        <a class="product-here" href="single-page.html"><img src="images/p1.jpg" title="product-name" /></a>
                        <h4><a href="single-page.html">Nike Roshe Run</a></h4>
                        <a class="product-btn" href="single-page.html"><span>??????</span><small>SABER M??S</small><label> </label></a>
                    </div>
                    <div class="col-md-3 special-products-grid text-center">
                        <a class="brand-name" href="single-page.html"><img src="images/b2.jpg" title="name" /></a>
                        <a class="product-here" href="single-page.html"><img src="images/p2.jpg" title="product-name" /></a>
                        <h4><a href="single-page.html">Line Link 67009</a></h4>
                        <a class="product-btn" href="single-page.html"><span>??????</span><small>SABER M??S</small><label> </label></a>
                    </div>
                    <div class="col-md-3 special-products-grid text-center">
                        <a class="brand-name" href="single-page.html"><img src="images/b3.jpg" title="name" /></a>
                        <a class="product-here" href="single-page.html"><img src="images/p3.jpg" title="product-name" /></a>
                        <h4><a href="single-page.html">Minimus Zero </a></h4>
                        <a class="product-btn" href="single-page.html"><span>??????</span><small>SABER M??S</small><label> </label></a>
                    </div>
                    <div class="col-md-3 special-products-grid text-center">
                        <a class="brand-name" href="single-page.html"><img src="images/b4.jpg" title="name" /></a>
                        <a class="product-here" href="single-page.html"><img src="images/p4.jpg" title="product-name" /></a>
                        <h4><a href="single-page.html"> Athletic Shoe </a></h4>
                        <a class="product-btn" href="single-page.html"><span>??????</span><small>SABER M??S</small><label> </label></a>
                    </div>
                    <div class="col-md-3 special-products-grid text-center">
                        <a class="brand-name" href="single-page.html"><img src="images/b5.jpg" title="name" /></a>
                        <a class="product-here" href="single-page.html"><img src="images/p2.jpg" title="product-name" /></a>
                        <h4><a href="single-page.html">Veronique </a></h4>
                        <a class="product-btn" href="single-page.html"><span>??????</span><small>SABER M??S</small><label> </label></a>
                    </div>
                    <div class="col-md-3 special-products-grid text-center">
                        <a class="brand-name" href="single-page.html"><img src="images/b6.jpg" title="name" /></a>
                        <a class="product-here" href="single-page.html"><img src="images/p6.jpg" title="product-name" /></a>
                        <h4><a href="single-page.html">Suede Boots </a></h4>
                        <a class="product-btn" href="single-page.html"><span>??????</span><small>SABER M??S</small><label> </label></a>
                    </div>
                    <div class="col-md-3 special-products-grid text-center">
                        <a class="brand-name" href="single-page.html"><img src="images/b7.jpg" title="name" /></a>
                        <a class="product-here" href="single-page.html"><img src="images/p7.jpg" title="product-name" /></a>
                        <h4><a href="single-page.html">Barricade 6.0  </a></h4>
                        <a class="product-btn" href="single-page.html"><span>??????</span><small>SABER M??S</small><label> </label></a>
                    </div>
                    <div class="col-md-3 special-products-grid text-center">
                        <a class="brand-name" href="single-page.html"><img src="images/b1.jpg" title="name" /></a>
                        <a class="product-here" href="single-page.html"><img src="images/p8.jpg" title="product-name" /></a>
                        <h4><a href="single-page.html">Cotu Classic </a></h4>
                        <a class="product-btn" href="single-page.html"><span>??????</span><small>SABER M??S</small><label> </label></a>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <!---//special-products-grids---->
            </div>
            <!---//special-products---->
        </div>
        <!----form login/register---->
        <div>
            %= LoginForm() %
        </div>
        <!----//form login/register---->
        <!----content---->
        <!----footer--->
        <div class="footer">
            <div class="container">
                <div class="col-md-3 footer-logo">
                    <a href="index.html"><img src="images/flogo.png" title="brand-logo" /></a>
                </div>
                <div class="col-md-7 footer-links">
                    <ul class="unstyled-list list-inline">
                        <li><a href="#"> Preguntas Frecuentes</a> <span> </span></li>
                        <li><a href="#"> T??rminos y Condiciones</a> <span> </span></li>
                        <li><a href="contacto.jsp"> Contacto</a> </li>
                        <div class="clearfix"> </div>
                    </ul>
                </div>
                <div class="col-md-2 footer-social">
                    <ul class="unstyled-list list-inline">
                        <li><a class="github" href="https://github.com/StarAmbients"><span> </span></a></li>
                        <li><a class="linkedin" href="https://www.linkedin.com/in/deboraschuchdarosa/"><span> </span></a></li>
                        <li><a class="twitter" href="https://twitter.com/starambients"><span> </span></a></li>
                        <div class="clearfix"> </div>
                    </ul>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="clearfix"> </div>
        <!---//footer--->
        <!---copy-right--->
        <div class="copy-right">
            <div class="container">
                <p>Template by <a href="http://w3layouts.com/">W3layouts</a></p>
                <script type="text/javascript">
                    $(document).ready(function () {
                        /*
                         var defaults = {
                         containerID: 'toTop', // fading element id
                         containerHoverID: 'toTopHover', // fading element hover id
                         scrollSpeed: 1200,
                         easingType: 'linear' 
                         };
                         */

                        $().UItoTop({easingType: 'easeOutQuart'});

                    });
                </script>
                <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
            </div>
        </div>
        <!--//copy-right--->
    </div>
    <!----container---->
</body>
</html>

