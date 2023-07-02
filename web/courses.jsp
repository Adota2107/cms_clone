<%-- 
    Document   : courses
    Created on : Jun 25, 2023, 9:59:19 AM
    Author     : nhatm
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>eLearning: Course categories</title>
        <link rel="stylesheet" href="css/courses/cms_style.css"/>
        <link rel="stylesheet" href="css/courses/container_style.css"/>
        <link rel="shortcut icon" href="https://cmshn.fpt.edu.vn/theme/image.php/trema/theme/1684246329/favicon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body id="page-site-index" class="drawer-ease drawer-open-left">
        <div id="page-wrapper">
            <!-- Header -->
            <c:import url="navbar.jsp"/>

            <!-- Container -->
            <div id="page" class="container-fluid">
                <header id="page-header" class="row">
                    <div class="col-12 pt-3 pb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex">
                                    <div class="mr-auto">
                                        <div class="page-context-header">
                                            <div class="page-header-headings">
                                                <h1>CMS - Course Management System</h1>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
                <div id="page-content" class="row">
                    <div id="region-main-box" class="col-12">
                        <section id="region-main">
                            <div class="card">
                                <div class="card-body">
                                    <div role="main">
                                        <form action="action" method="" style="text-align: center">
                                            <fieldset class="coursesearchbox invisiblefieldset">
                                                <label for="coursesearchbox">Search Course:</label>
                                                <input type="text" name="search" id="coursesearchbox" size="30">
                                                <input type="submit" value="Go" id="go">
                                            </fieldset>
                                        </form>
                                        <h2>Course Categories</h2>
                                        <!-- In this area add collapse all-->


                                        <div class="course_category_tree">
                                            <div class="content">
                                                <div class="subcategories">
                                                    <c:forEach items="${cate}" var="item">
                                                        <div data-toggle="collapse" data-target="#content" role="button">
                                                            <div class="info">
                                                                <h3 class="categoryname">
                                                                    <a href="#" class="cate-name">${item.getCategoryName()}</a>
                                                                </h3>
                                                            </div>
                                                            <div id="content" class="collapse">
                                                                <c:choose>
                                                                    <c:when test="${item.getCategoryName() eq 'Java Web Application Development'}">
                                                                        <div>
                                                                            <div class="info">
                                                                                <h4 class="categoryname abc">
                                                                                    <a href="#">PRJ301</a><br><br>
                                                                                    <a href="#">PRO192</a>
                                                                                </h4>
                                                                            </div>
                                                                        </div>
                                                                    </c:when>
                                                                    <c:when test="${item.getCategoryName() eq 'Mathematics'}">
                                                                        <div>
                                                                            <div class="info">
                                                                                <h4 class="categoryname abc">
                                                                                    <a href="#">MAS291</a>
                                                                                </h4>
                                                                            </div>
                                                                        </div>
                                                                    </c:when>
                                                                    <c:when test="${item.getCategoryName() eq 'Elementary Japanese'}">
                                                                        <div>
                                                                            <div class="info">
                                                                                <h4 class="categoryname abc">
                                                                                    <a href="#">JPD113</a><br><br>
                                                                                    <a href="#">JPD123</a>
                                                                                </h4>
                                                                            </div>
                                                                        </div>
                                                                    </c:when>
                                                                    <c:when test="${item.getCategoryName() eq 'Internet Of Things'}">
                                                                        <div>
                                                                            <div class="info">
                                                                                <h4 class="categoryname abc">
                                                                                    <a href="#">IOT102</a>
                                                                                </h4>
                                                                            </div>
                                                                        </div>
                                                                    </c:when>
                                                                    <c:when test="${item.getCategoryName() eq 'Software Engineering'}">
                                                                        <div>
                                                                            <div class="info">
                                                                                <h4 class="categoryname abc">
                                                                                    <a href="#">SWE201c</a><br><br>
                                                                                    <a href="#">SWP391</a>
                                                                                </h4>
                                                                            </div>
                                                                        </div>
                                                                    </c:when>
                                                                </c:choose>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
            <!-- Footer -->
            <c:import url="footer.jsp"/>        
        </div>
    </body>
</html>

