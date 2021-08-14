<%@ taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm'%>
<tm:Guard>
<jsp:forward page='/LoginForm.jsp'/>
</tm:Guard>
<!DOCTYPE HTML>
<html lang='en'>
<head>
<title>HR Application</title>
<link rel='stylesheet' type='text/css' href='/styletwo/css/styles.css'></head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="Our Team">
<!DOCTYPE html>
<html>
<style>
body, html {
  height: 100%;
  margin: 0;
}

.bgimg {
  background-image: url('C:\tomcat9\webapps\styletwo\images\comp5.jpg');
  height: 100%;
  background-position: center;
  background-size: cover;
  position: relative;
  color: white;
  font-family: "Courier New", Courier, monospace;
  font-size: 25px;
}

.topleft {
  position: absolute;
  top: 80;
  left: 16px;
}

.bottomleft {
  position: absolute;
  bottom: 0;
  left: 16px;
}

.middle {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

hr {
  margin: auto;
  width: 40%;
}
</style>
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>Home</title>
<link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Home.css" media="screen">
<script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
<meta name="generator" content="Nicepage 3.13.2, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
<link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700">
<script type="application/ld+json">{
"@context": "http://schema.org",
"@type": "Organization",
"name": "",
"url": "index.html",
"logo": "images/4e028abc3b2ee8e1ee5f60256e9bd9e332e5b3abbb53644ded302aabf3a54676acc3c781b549c64aa1bc0e6f602d2102627493b1ccbc85f4211447_12801.png",
"sameAs": []
}</script>
<meta property="og:title" content="Home">
<meta property="og:type" content="website">
<meta name="theme-color" content="#478ac9">
<link rel="canonical" href="index.html">
<meta property="og:url" content="index.html">
</head>
<body>
<!-- Main container starts here-->
<div class='main-container'>
<!-- Header starts here-->
<div class='header'>
<body data-home-page="Home.html" data-home-page-title="Home" class="u-body"><header class="u-align-left u-clearfix u-gradient u-header u-header" id="sec-52be"><div class="u-clearfix u-sheet u-sheet-1">
<a href="index.jsp" class="u-image u-logo u-image-1" data-image-width="1077" data-image-height="1280">
<img src="images/4e028abc3b2ee8e1ee5f60256e9bd9e332e5b3abbb53644ded302aabf3a54676acc3c781b549c64aa1bc0e6f602d2102627493b1ccbc85f4211447_12801.png" class="u-logo-image u-logo-image-1" data-image-width="112.873">
</a>
<nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
<div class="menu-collapse" style="font-size: 2rem; letter-spacing: 0px; font-weight: 500;">
<a class="u-button-style u-custom-active-color u-custom-border u-custom-border-color u-custom-hover-color u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
<svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
</a>
</div>
<div class="u-custom-menu u-nav-container">
<ul class="u-nav u-spacing-2 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-active-grey-5 u-button-style u-hover-grey-10 u-nav-link u-text-active-palette-2-base u-text-hover-palette-1-base u-text-palette-2-base" href="ourteam.html" style="padding: 10px 20px;">Our Team</a>
</li><li class="u-nav-item"><a class="u-active-grey-5 u-button-style u-hover-grey-10 u-nav-link u-text-active-palette-2-base u-text-hover-palette-1-base u-text-palette-2-base" href='/styletwo/logout' style="padding: 10px 20px;">Logout</a>
</li>
</l1>
</ul>
</div>
<div class="u-custom-menu u-nav-container-collapse">
<div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
<div class="u-sidenav-overflow">
<div class="u-menu-close"></div>
</div>
</div>
<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
</div>
</nav>
</div></header>
<!-- Header ends here-->
<!--content starts here-->
<div class='content'>
<!--Left panel starts here-->
<div class='content-left-panel'>

<center>
<u>
<h6>User: <b>${username}&nbsp;</b></h6>
<tm:If condition='${module==DESIGNATION}'>
<b>Designation</b><br>
</tm:If>

<tm:If condition='${module!=DESIGNATION}'>
<a href='/styletwo/Designations.jsp'>Designation</a><br>
</tm:If>

<tm:If condition='${module==EMPLOYEE}'>
<b>Employee</b><br>
</tm:If>

<tm:If condition='${module!=EMPLOYEE}'>
<a href='/styletwo/Employees.jsp'>Employee</a><br>
</tm:If>


<tm:If condition='${module!=HOME}'>
<br>
<a href='/styletwo/index.jsp'>Home</a>
</tm:If>
</u>
</center>

</div>
<!-- Left panel ends here-->
<!-- Right panel starts here-->
<div class='content-right-panel'>
