<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.util.List" %>
    
 <%@page import="org.hibernate.query.Query"%>
 <%@ page import="myweb.FactoryProvider"%>
 <%@ page import="org.hibernate.Session"%>
 <%@ page import="myweb.Note"%>






<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes</title>
	<%@include file="all_js_cssjsp.jsp" %>

</head>
<body>
<div class="container-fluid p-0 m-0">
<%@include file="navbar.jsp" %>

<h1>All notes : </h1>

<div class="row">
<div class="col-12">
<%

Session s = FactoryProvider.getFactory().openSession();
Query q =s.createQuery("from Note");
List<Note> list=q.list();
for(Note note:list){
%>

<div class="card mt-3">
  <img src="images/notepad.png" style="max-width:100px;" class="card-img-top pl-4 pt-4 mx-auto"  alt="...">
  <div class="card-body">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
        <p class="card-text"><%=note.getAddedDate() %></p>

<div class="container text-center mt-2">

    <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
        <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
    

</div>
  </div>
</div>

<%
}
s.close();

%>

</div>

</div>



</div>
</body>
</html>