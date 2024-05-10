<%@page import="com.entity.User"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#"><i class="fa-solid fa-square-phone"></i>PhoneBook</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><i class="fa-solid fa-house"></i>Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="addContact.jsp"><i class="fa-solid fa-phone"></i>Add Phone no.</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="viewContact.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fa-solid fa-eye"></i>View Contact
        </a>
      </li>
    </ul>
    <% User user=(User)session.getAttribute("user");
    if(user == null){
    %>
    <form class="form-inline my-2 my-lg-0">
      <a href="login.jsp" class="btn btn-success"><i class="fa-solid fa-user"></i>Login</a>
      <a href="register.jsp" class="btn btn-danger ml-2"><i class="fa-solid fa-registered"></i>Register</a>
    </form>
    <%
    } else {
    	%>
    	<form class="form-inline my-2 my-lg-0">
        <button class="btn btn-success"><%=user.getName()%></button>
        <a href="logout" class="btn btn-danger ml-2">Logout</a>
      </form>
      <% 
    }
    %>
    
  </div>
</nav>