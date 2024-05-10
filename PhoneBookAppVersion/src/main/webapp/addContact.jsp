<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.entity.Contact"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCss.jsp" %>
</head>
<body style="background-color:#b3fcf6;">
<%@include file="component/navabr.jsp" %>
<% 
/*if(user==null){
	session.setAttribute("invalidMsg","Login please");
	response.sendRedirect("login.jsp");
}*/
%>
<div class="container-fluid">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">
<h4 class="text-center text-success">Add Contact Page</h4>
<% 
String sucssMsg= (String) session.getAttribute("succMsg");
String errorMsg= (String) session.getAttribute("failedMsg");
if(sucssMsg != null){
%>
<p class="text-success text-center"><%=sucssMsg %></p>
<%
  session.removeAttribute("succMsg");
}
if(errorMsg == null){
%>
<p class="text-danger text-center"><%=errorMsg %></p>
<%
  session.removeAttribute("failedMsg");
}
%>
<form action="addContact" method="post">
<%
if(user!=null)
{%>
	<input type="hidden" value="<%= user.getId()%>" name="userid">
<%}
%>
  <div class="form-group">
    <label for="exampleInputEmail1">Enter the name</label>
    <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter the email address</label>
    <input name="email" type="text" class="form-control" id="exampleInputPassword1" placeholder="enter address">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter the Phone Number</label>
    <input name="phno" type="text" class="form-control" id="exampleInputPassword1" placeholder="enter address">
  </div>
  <div class="text-center mt-2">
  <button type="submit" class="btn btn-primary">Save Contact</button>
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