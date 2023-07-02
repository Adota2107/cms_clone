<%-- 
    Document   : course_category
    Created on : Jun 25, 2023, 11:13:29 AM
    Author     : nhatm
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/cms/cms_style.css"/>
        <link rel="stylesheet" href="css/cms/container_style.css"/>
        <link rel="shortcut icon" href="https://cmshn.fpt.edu.vn/theme/image.php/trema/theme/1684246329/favicon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>JSP Page</title>
        <style>
            #page a {
                color: #fd647a;
                text-decoration: none;
                outline: none;
            }
            
            #page a:hover {
                color: #c5031f;
                text-decoration: underline;
            }
            
            #region-main-box{
                font-weight: 500;
                text-transform: capitalize;
            }
            
            .card-body{
                flex: 1 1 auto;
                padding: 1.25rem;
            }
            
            .coursesearchbox input{
                margin-top: 8px;
            }
            
            .coursesearchbox input:first-child{
                background-color: red;
            }
            
            #coursesearchbox{
                height: 2.75rem;
                background-color: rgba(144,144,144, .075);
                border: 1px solid rgba(144, 144, 144, .35)
            }
            
            #go{
                height: 2.75rem;
                background-color: #373a3c;
                border: none;
                color: white;
                margin: .5rem;
                padding: 0 .9rem;
                text-transform: uppercase;
                font-weight: 600;
            }
            
            .card-body h2{
                font-weight: 400;
                font-size: 1.75rem;
                line-height: 2rem;
            }
            
            .info h3{
                font-weight: 400;
                font-size: 1.25rem;
            }
            .cate-name{
                color: #fd647a;
                text-decoration: none;
                outline: none;
            }
            .cate-name:hover{
                color: #c5031f;
                text-decoration: underline;
            }
            
            .info h4{
                font-size: 1.1rem;
                font-weight: lighter;
            }
            
            .abc a{
                padding: 4px 0px 4px 16px;
            }
        </style>
    </head>
    <body>
        <div id="region-main-box" class="col-12">
            <section id="region-main">
                <div class="card">
                    <div class="card-body">
                        <div role="main">
                            <form action="action" method="" style="text-align: center">
                                <fieldset class="coursesearchbox invisiblefieldset">
                                    <label for="coursesearchbox">Search Course:</label><br>
                                    <input type="text" name="search" id="coursesearchbox" size="13"><br>
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
    </body>
</html>
