<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCss.jsp" %>
</head>
<body style="background-color:#b3fcf6;">
<%@include file="component/navabr.jsp" %>
<div class="container-fluid">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">
<h4 class="text-center text-success">Registration Page</h4>

<% 
String sucssMsg= (String) session.getAttribute("sucssMsg");
String errorMsg= (String) session.getAttribute("errorMsg");
if(sucssMsg != null){
%>
<p class="text-success text-center"><%=sucssMsg %></p>
<%
}
if(errorMsg!=null){
%>
<p class="text-danger text-center"><%=errorMsg %></p>
<%
}
%>
<form action="register" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Enter the name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
    input="name" placeholder="Enter name">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter the address</label>
    <input type="text" class="form-control" id="exampleInputPassword1"
    input="email" placeholder="enter address">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" 
    input="password" placeholder="Password">
  </div>
  <div class="text-center mt-2">
  <button type="submit" class="btn btn-primary">Register</button>
  </div>
</form>
</div>
</div>
</div>
</div>
</div>
<%@include file="component/footer.jsp" %>
</body>
</html>