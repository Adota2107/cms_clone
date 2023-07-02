<%-- 
    Document   : footer
    Created on : Jun 21, 2023, 2:34:07 PM
    Author     : nhatm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            #page-footer {
                background-color: #1a1c1b;
                color: white;
                text-align: center;
                padding: 1.5em 0;
                text-transform: none;
                font-size: .9em;
            }

            .loginfo a {
                color: white;
            }

            .loginfo a:hover {
                color: white;
            }

            .mobile {
                color: white;
            }

            .mobile:hover {
                color: white;
            }

            .copy-right {
                margin: 3em 0 0;
            }
        </style>
    </head>
    <body>
        <footer id="page-footer">
            <div class="footer-container">
                <div>
                    <section>
                        <div id="prelog" class="loginfo">
                            You are not logged in.(<a href="login.jsp">Log in</a>)
                        </div>
                        <c:choose>
                            <c:when test="${sessionScope.checkLogin}">
                                <div class="loginfo">
                                    You are logged in(<a href="logout">Log out</a>)
                                </div>
                                <style>
                                    #prelog{
                                        display: none;
                                    }
                                </style>
                            </c:when>
                        </c:choose>
                        <a href="#" class="mobile">Get the mobile app</a>
                    </section>
                </div>
            </div>
            <div class="copy-right">
                <span>©</span>ADOTA
            </div>
        </footer>        
    </body>
</html>
