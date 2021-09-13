<%-- 
    Document   : base
    Created on : Aug 7, 2021, 9:03:29 PM
    Author     : CaoNgocCuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<!DOCTYPE html>
<html>
    <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Travel</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,700;1,400&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="./fonts/fontawesome-free-5.15.4-web/css/all.min.css">
        <link rel="stylesheet" href="./css/grid_system.css">
        <link rel="stylesheet" href="./css/base.css">
        <link rel="stylesheet" href="./css/main.css">
        <link rel="stylesheet" href="./css/tour.css">
        <link rel="stylesheet" href="./css/blog.css">
        <link rel="stylesheet" href="./css/blog-details.css">
        <link rel="stylesheet" href="./css/contact.css">
    </head>
    <body>
        <!-- Header -->
        <tiles:insertAttribute name="header"/>
        
        <!-- Content -->
        <tiles:insertAttribute name="content" />
        
        <!-- Footer -->
        <tiles:insertAttribute name="footer" /> 
   </body>
</html>
