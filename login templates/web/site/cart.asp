<!DOCTYPE html>
<html>
<head>
  <!-- Site made with Mobirise Website Builder v4.3.5, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.3.5, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="assets/images/ibx-2-304x290.png" type="image/x-icon">
  <meta name="description" content="Web Page Creator Description">
  <title>CART</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/socicon/css/styles.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise-gallery/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<body>
<section class="menu cid-qyvZvAATCr" once="menu" id="menu1-z" data-rv-view="143">

    

    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm bg-color transparent">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="">
                         <img src="assets/images/ibx-2-304x290.png" alt="IBEX" title="" media-simple="true" style="height: 3.8rem;">
                    </a>
                </span>
                
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true"><li class="nav-item">
                    <a class="nav-link link text-black display-4" href="page1.html"><span class="mbri-play mbr-iconfont mbr-iconfont-btn"></span>
                        &nbsp;YOUTUBE &nbsp;&nbsp;</a>
                </li><li class="nav-item">
                    <a class="nav-link link text-black display-4" href="page2.html"><span class="mbri-shopping-basket mbr-iconfont mbr-iconfont-btn"></span>
                        &nbsp;STORE&nbsp;</a>
                </li><li class="nav-item"><a class="nav-link link text-black display-4" href="page3.html"><span class="mbri-code mbr-iconfont mbr-iconfont-btn"></span>
                        &nbsp;SOFTWARES&nbsp;</a><li class="nav-item dropdown"><a class="nav-link link dropdown-toggle text-black display-4" href="https://mobirise.com" data-toggle="dropdown-submenu" aria-expanded="false">MORE</a><div class="dropdown-menu"><a class="dropdown-item text-black display-4" href="index.html">LOGOUT</a></div></li></ul>
            
        </div>
    </nav>
</section>

<section class="engine"><a href="https://mobirise.co/h">how to make your own website for free</a></section><section class="header1 cid-qySY4JagbH mbr-parallax-background" id="header1-13" data-rv-view="145">

    

    

    <div class="container">
        <div class="row justify-content-md-center">
            <div class="mbr-white col-md-10">
                <h1 class="mbr-section-title align-center mbr-bold pb-3 mbr-fonts-style display-1">CART</h1>
                
                
                
            </div>
        </div>
    </div>

</section>

<section class="mbr-gallery mbr-slider-carousel cid-qzySAWjinI" id="gallery3-2t" data-rv-view="148">

    

    <div>
        <div><!-- Filter --><!-- Gallery -->
		<div class="mbr-gallery-row">
		<div class="mbr-gallery-layout-default">
		<div>
		<div class="row">
		<%
		set con=nothing
        set con=Server.CreateObject("ADODB.Connection")
        con.Open ("Provider=Microsoft.Jet.OLEDB.4.0;" & "Data Source=C:\\inetpub\wwwroot\Ibex\users.mdb")
        Set rss=Server.CreateObject("ADODB.RecordSet")
        
        sql="select * from cart where Email in('"&session("name")&"');"
        set rss=con.Execute(sql)
        amt=0
        do while not rss.EOF 
        
        Set rs=Server.CreateObject("ADODB.RecordSet")
        sql="select * from items where pid="&rss("pid")&";"
        set rs=con.Execute(sql)
        
        do while not rs.EOF 
         response.write("<div class='col-lg-4'><div class='mbr-gallery-item mbr-gallery-item--pNaN' data-video-url='false' data-tags='Awesome'><div href='#lb-gallery3-2t' data-slide-to='0' data-toggle='modal'><img src='"&rs("image")&"' alt='' width='300' height='300'></div><span class='icon-focus'></span></div></div>")
		rs.MoveNext	
		loop
		rss.MoveNext
		loop
		%>
			</div>
	</div>
		
		<div class="clearfix">
		</div>
		</div>
		</div><!-- Lightbox -->
		</div>
    </div>

</section>

<section class="cid-qz2uuVEcm8 mbr-reveal" id="footer1-2j" data-rv-view="183">

    

    

    <div class="container">
        <div class="media-container-row content text-white">
            <div class="col-12 col-md-3">
                <div class="media-wrap">
                    <a href="https://mobirise.com/">
                        <img src="assets/images/ibx-2-304x2900.png" alt="Ibex" title="" media-simple="true">
                    </a>
                </div>
            </div>
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <h5 class="pb-3">
                    Location</h5>
                <p class="mbr-text">Mumbai, India</p>
            </div>
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <h5 class="pb-3">
                    Contacts
                </h5>
                <p class="mbr-text">
                    Email: hillstudio.services@gmail.com&nbsp;<br>Phone: +91 9167005920&nbsp;<br></p>
            </div>
            <div class="col-12 col-md-3 mbr-fonts-style display-7">
                <h5 class="pb-3">
                    Links
                </h5>
                <p class="mbr-text"><a class="text-primary" href="http://youtube.com/c/ibextech">Youtube Channel</a></p>
            </div>
        </div>
        <div class="footer-lower">
            <div class="media-container-row">
                <div class="col-sm-12">
                    <hr>
                </div>
            </div>
            <div class="media-container-row mbr-white">
                <div class="col-sm-6 copyright">
                    <p class="mbr-text mbr-fonts-style display-7">
                        © Copyright 2017 Ibex - All Rights Reserved
                    </p>
                </div>
                <div class="col-md-6">
                    <div class="social-list align-right">
                        <div class="soc-item">
                            <a href="https://youtube.com/c/ibextech" target="_blank">
                                <span class="mbr-iconfont mbr-iconfont-social socicon-youtube socicon" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.facebook.com/ibexsocial/" target="_blank">
                                <span class="mbr-iconfont mbr-iconfont-social socicon-facebook socicon" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.instagram.com/ibex.social" target="_blank">
                                <span class="mbr-iconfont mbr-iconfont-social socicon-instagram socicon" media-simple="true"></span>
                            </a>
                        </div>
                        
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/popper/popper.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smooth-scroll/smooth-scroll.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touch-swipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/jarallax/jarallax.min.js"></script>
  <script src="assets/masonry/masonry.pkgd.min.js"></script>
  <script src="assets/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/bootstrap-carousel-swipe/bootstrap-carousel-swipe.js"></script>
  <script src="assets/jquery-mb-vimeo_player/jquery.mb.vimeo_player.js"></script>
  <script src="assets/viewport-checker/jquery.viewportchecker.js"></script>
  <script src="assets/theme/js/script.js"></script>
  <script src="assets/mobirise-gallery/player.min.js"></script>
  <script src="assets/mobirise-gallery/script.js"></script>
  <script src="assets/mobirise-slider-video/script.js"></script>
  
  
  <input name="animation" type="hidden">
  </body>
</html>