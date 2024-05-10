<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DbConnect"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCss.jsp" %>
<style type="text/css">
.back-img{
background:url("img/charging-multiple-phones.jpg");
height:80vh;
width:100%;
background-repeat:no-repeat;
background-size:cover;
}
</style>
</head>
<body>
   <%@include file="component/navabr.jsp" %>
   
   <% User u=(User) session.getAttribute("user");
      out.println(u); %>
<div class="container-fluid back-img text-center text-success">
<h1>
Welcome to Phone App
</h1>
</div>
<%@include file="component/footer.jsp" %>
</body>
</html> 