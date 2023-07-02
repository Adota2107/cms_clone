<%-- 
    Document   : demo
    Created on : Jun 20, 2023, 4:42:13 PM
    Author     : nhatm
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>CMS - Course Management System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/demo/cms_style.css" rel="stylesheet">
        <link rel="stylesheet" href="css/demo/container_style.css"/>
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
            <div id="page" class="container-fluid page">
                <div id="frontpage-banner" class="banner">
                    <div id="frontpage-banner-content">
                        <h2 class="text-white">FPT Education</h2>
                        <h3 class="text-white">Course Management System</h3>
                        <form action="course">
                            <button class="text-black learn" type="submit" style="padding: 0px .9rem">LEARN MORE</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- footer -->
            <c:import url="footer.jsp"/>
        </div>
    </body>
</html>
