<%-- 
    Document   : base
    Created on : Aug 7, 2021, 9:03:29 PM
    Author     : CaoNgocCuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title><tiles:insertAttribute name="title"/></title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,700;1,400&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="<c:url value="/fonts/fontawesome-free-5.15.4-web/css/all.min.css" />">

        <!-- Bootstrap 4 and summernote start -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
        <!-- Bootstrap 4 and summernote end -->    

        <link rel="stylesheet" href="<c:url value="/css/base.css" />">
        <link rel="stylesheet" href="<c:url value="/css/main.css" />">
        <link rel="stylesheet" href="<c:url value="/css/tour.css" />"/>
        <link rel="stylesheet" href="<c:url value="/css/about.css" />">
        <link rel="stylesheet" href="<c:url value="/css/contact.css" />">
        <link rel="stylesheet" href="<c:url value="/css/blog.css" />">
        <link rel="stylesheet" href="<c:url value="/css/blog-details.css" />">
        <link rel="stylesheet" href="<c:url value="/css/bookTour.css"/>"/>
        <link rel="stylesheet" href="<c:url value="/css/login.css" />" />
    </head>
    <body>
        <!-- Header -->
        <tiles:insertAttribute name="header"/>

        <!-- Content -->
        <div id="main">
            <!-- Slider -->
            <tiles:insertAttribute name="slide_header" />
            
            <!-- Contact -->
            <tiles:insertAttribute name="contact" />
            
            <!-- About -->
            <tiles:insertAttribute name="about" />
            
            <!-- header_search -->
            <tiles:insertAttribute name="search_header" />
            
            <!-- destination famous -->
            <tiles:insertAttribute name="destination_famous"/>
            
            <!-- service -->
            <tiles:insertAttribute name="service" />
            
            <!-- destination popular -->
            <tiles:insertAttribute name="destination_popular" />
            
            <!-- register news -->
            <tiles:insertAttribute name="register_news" />
            
            <!-- testimonial -->
            <tiles:insertAttribute name="testimonial" />
            
            <!-- blog -->
            <tiles:insertAttribute name="blog" />
            
            <!--auth-->
            <tiles:insertAttribute name="auth" />
           
        </div>
        
        <!-- Footer -->
        <tiles:insertAttribute name="footer" />
        
        <script src="<c:url value="/js/script.js"/>"></script>
        <script src="<c:url value="/js/login-register.js" />"></script>
   </body>
</html>
