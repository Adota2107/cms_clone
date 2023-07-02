<%-- 
    Document   : login
    Created on : Jun 21, 2023, 2:37:30 PM
    Author     : nhatm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CMS - Course Management System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/loginstyle.css" rel="stylesheet">
        <link rel="shortcut icon" href="https://cmshn.fpt.edu.vn/theme/image.php/trema/theme/1684246329/favicon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <div id="page-wrapper" class="container-fluid">
            <div id="content" class="container-fluid">
                <div id="header" class="text-center mt-5">
                    <h3>CMS - Course Management System</h3>
                </div>
                <div id="login" class="text-center mt-5">
                    <p>Log in using your account on:</p>
                    <button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#myModal">Login</button>
                </div>
            </div>
        </div>
        <div class="modal fade" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="cms_login" method="post">
                        <!-- Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Login</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>

                        <!-- Container -->
                        <div class="modal-body">

                            <!-- add table cho dep-->
                            <table>
                                <tr>
                                    <td>Account:</td>
                                    <td><input type="text" name="account" required></td>
                                </tr>
                                <tr>
                                    <td>Password:</td>
                                    <td><input type="text" name="password" required></td>
                                </tr>
                            </table>

                        </div>

                        <!-- Footer -->
                        <div class="modal-footer">
                            <input type="submit" name="login" value="Login" class="btn btn-outline-primary">
                        </div>
                    </form>
                </div>
            </div>
        </div>       
    </body>
</html>
