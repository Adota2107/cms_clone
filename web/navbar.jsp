<%-- 
    Document   : navbar
    Created on : Jun 21, 2023, 2:33:55 PM
    Author     : nhatm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="https://cmshn.fpt.edu.vn/theme/image.php/trema/theme/1684246329/favicon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            .fa-globe {
                color: gray;
            }

            .fa-globe:hover {
                color: black;
            }

            #nav-drawer {
                position: fixed;
                z-index: 1;
                height: calc(100% - 50px);
                width: 285px;
                left: -305px;
                top: 4rem;
                background-color: #29292a;
                padding: 1rem;
                transition: right .5s ease, left .5s ease;
            }

            #nav-drawer.open {
                left: 0;
            }

            .list-group {
                display: flex;
                flex-direction: column;
                padding-left: 0;
                text-transform: none;
            }

            nav .list-group-item {
                background-color: transparent;
                border: none;
                padding: .75rem 1.25rem;
                color: #aaa;
                transition: all .25s ease;
                font-weight: 500;
            }

            nav .list-group-item:hover {
                color: white;
                background-color: #fd647a;
            }

            .medialeft i {
                margin-right: .75rem;
                font-size: 20px;
            }

/*            .mediaright {
                font-weight: 700;
            }*/

            .logo img {
                height: 35px;
                width: 117px;
            }

            .usermenu {
                padding-right: 60px;
                margin: 5px;
            }

            .right {
                margin-left: auto;
            }
            
            .icon {
                font-size: 16px;
                width: 16px;
                height: 16px;
                margin: 0;
                padding: 0;
                box-sizing: content-box;
                margin-right: .5rem;
            }
            
            .navbar-nav{
                display: flex;
                flex-direction: row;
            }
            
            .nav-item{
                display: flex;
                flex-direction: row;
            }
            
            .dropdown{
                float: left;
                
            }
            
            .dropbtn{
                border: none;
                background-color: #f8f9fa;
                color: gray;
            }
            .dropbtn:focus {
                color: black;
            }
            
            .dropdown-content {
                display: none;
                position: absolute;
                z-index: 1;
                background-color: #f8f9fa;
                padding-top: 8px;
                padding-bottom: 8px;
                border: 1px solid rgba(128, 128, 128, .5);
            }
            
            .dropdown-content a{
                float: none;
                color: black;
                display: block;
                text-decoration: none;
                padding: 4px 24px;
                font-weight: 500;
            }       
            
            .dropdown-content a:hover{
                background-color: rgba(128, 128, 128, .5);
            }             
            
            .show{
                display: block;
            }
        </style>        
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top px-3">
            <div class="d-inline-block me-3" data-region="draw-toggle">
                <button type="button" class="btn btn-outline-secondary" onclick="toggleMenu()">
                    <i class="icon fa fa-bars"></i>
                    <span class="sr-only">Side panel</span>
                </button>
            </div>
            <a href="#" class="navbar-brand has-logo">
                <span class="logo d-inline">
                    <img src="images/2020-FPTU-Eng.png" alt="eLearning">
                </span>
            </a>
            
            <c:choose>
                <c:when test="${sessionScope.checkLogin}">
                    <div class="dropdown">
                        <button class="dropbtn" onclick="dropDown()">
                            <i class="icon fa fa-graduation-cap" aria-hidden="true"></i> MY COURSES
                        </button>
                        <div id="myDropdown" class="dropdown-content">
                            <c:forEach items="${courses}" var="item">
                                <a href="#" title="${item.getCourseName()}">${item.getCourseName()}</a>
                            </c:forEach>
                        </div>
                    </div>
                </c:when>
            </c:choose>
            
            <ul class="nav navbar-nav right">
                <li class="nav-item lang">
                    <span class="dropdown dropstart">
                        <a href="#" class="nav-link" data-bs-toggle="dropdown">
                            <i class="icon fa fa-globe"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-item" href="#">English (EN)</li>
                            <li class="dropdown-item" href="#">Vietnamese (VI)</li>
                        </ul>
                    </span>
                </li>
                <c:choose>
                    <c:when test="${sessionScope.checkLogin}">
                        <li class="nav-item">
                            <div class="pull-right popover-region collapsed">
                                <a href="#" id="message-drawer-toggle" class="nav-link d-inline-block popover-region-toggle position-relative">
                                    <i class="icon fa fa-comments-o " title="Toggle messaging drawer"></i>
                                </a>
                            </div>
                            <div class="popover-region popover-region-notifications collapsed" id="nav-notification-popover-container" data-userid="64902" data-region="popover-region">
                                <div class="popover-region-toggle nav-link">
                                    <i class="icon fa fa-bell" title="Toggle notifications menu"></i>
                                </div>
                            </div>
                        </li>                     
                    </c:when>
                </c:choose>

                <li class="nav-item d-flex align-items-center">
                    <div class="usermenu">
                        <span id="prelog" class="login">
                            You are not logged in.(<a href="login.jsp" class="text-danger log">Log in</a>)         
                        </span>
                        <c:choose>
                            <c:when test="${sessionScope.checkLogin}">
                                <span class="login">
                                    You are logged in
                                </span>
                                <style>
                                    #prelog{
                                        display: none;
                                    }
                                </style>
                            </c:when>
                        </c:choose>
                    </div>
                </li>
            </ul>
        </nav>
        
        <!--Working on error-->
        <div id="nav-drawer" data-region="drawer" tabindex="-1">
            <nav class="list-group">
                <a href="#" class="list-group-item">
                    <div>
                        <div>
                            <span class="medialeft">
                                <i class="icon fa fa-home"></i>
                            </span>
                            <span class="mediaright">Home</span>
                        </div>
                    </div>
                </a>
                
                <c:choose>
                    <c:when test="${sessionScope.checkLogin}">
                        <input type="text" name="id_true" value="${id}" style="display: none">
                        <input type="text" name="id_true" value="${account}" style="display: none">
                        <a href="#" class="list-group-item">
                            <div>
                                <span class="medialeft">
                                    <i class="icon fa fa-tachometer"></i>
                                </span>
                                <span class="mediaright">Dashboard</span>

                            </div>
                        </a>
                        <a href="#" class="list-group-item">
                            <div>
                                <span class="medialeft">
                                    <i class="icon fa fa-calendar"></i>
                                </span>
                                <span class="mediaright">Calendar</span>

                            </div>
                        </a>
                        <a href="#" class="list-group-item">
                            <div>
                                <span class="medialeft">
                                    <i class="icon fa fa-file-text-o"></i>
                                </span>
                                <span class="mediaright">Private Files</span>
                            </div>
                        </a>
                        <div class="list-group-item">
                            <div>
                                <span class="medialeft">
                                    <i class="icon fa fa-graduation-cap"></i>
                                </span>
                                <span class="mediaright">My Courses</span>
                            </div>
                        </div>
                        <c:forEach items="${courses}" var="item">
                            <a href="#" class="list-group-item">
                                <div class="ps-3">
                                    <span class="medialeft">
                                        <i class="icon fa fa-graduation-cap"></i>
                                    </span>
                                    <span class="mediaright">${item.getCourseName()}</span>
                                </div>
                            </a>
                        </c:forEach>
                    </c:when>
                </c:choose>
            </nav>
        </div>
        <script>
            function toggleMenu() {
                document.getElementById("page-site-index").classList.toggle("marginLeft");
                document.getElementById("nav-drawer").classList.toggle("open");
            }
            
            //Dropdown
            /* When the user clicks on the button, toggle between hiding and showing the dropdown content */
            function dropDown() {
              document.getElementById("myDropdown").classList.toggle("show");
            }

            // Close the dropdown if the user clicks outside of it
            window.onclick = function(e) {
              if (!e.target.matches('.dropbtn')) {
              var myDropdown = document.getElementById("myDropdown");
                if (myDropdown.classList.contains('show')) {
                  myDropdown.classList.remove('show');
                }
              }
            }
        </script>  
    </body>
</html>
