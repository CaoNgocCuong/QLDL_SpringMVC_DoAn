<%-- 
    Document   : base
    Created on : Aug 7, 2021, 9:03:29 PM
    Author     : CaoNgocCuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title" />
        </title>
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
