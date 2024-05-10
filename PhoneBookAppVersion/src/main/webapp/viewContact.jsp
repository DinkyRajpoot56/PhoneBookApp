<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.dao.ContactDAO"%>
    <%@page import="java.sql.Connection"%>
    <%@page import="com.conn.DbConnect"%>
    <%@page import="java.util.List" %>
    <%@page import="com.entity.Contact"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCss.jsp" %>
<style type="text/css">
.crd-ho:hover{
  background-color: #f7f7f7;
}
</style>
</head>
<body>
<%@include file="component/navabr.jsp" %>
<%
if(user==null){
	session.setAttribute("invalidmsg","Login Please...");
	response.sendRedirect("login.jsp");
}
%>


   <div class="container">
    <div class="row p-2">
    <div class="col-md-3">
<%  
    if(user!=null)
    {

    ContactDAO dao = new ContactDAO(DbConnect.getConn());
    List<Contact> contact = dao.getAllContact(user.getId());
    
    for(Contact c : contact) {
%>
   
    <div class="card crd-ho">
    <div class="card-body">
    <h5>
      Name:
      <%=c.getName()%>
      </h5>
    <p>
    Ph no.:
    <%=c.getPhno()%>
    </p>
    <p>
    Email:
    <%=c.getEmail()%>
    </p>
    <p>
    About:
    <%=c.getAbout()%>
    </p>
    <div class="text-center">
    <a class="btn btn-success btn-sm text-white">Edit</a>
    <a class="btn btn-danger btn-sm text-white">Delete</a>
    </div>
    </div>
    </div>
    <%
    }
    }
    %>
    </div>
    </div>
    </div>
</body>
</html>