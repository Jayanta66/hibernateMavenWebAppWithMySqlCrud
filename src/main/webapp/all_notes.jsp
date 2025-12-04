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

<%

Session s = FactoryProvider.getFactory().openSession();
Query q =s.createQuery("from Note");
List<Note> list=q.list();
for(Note note:list){
	out.println(note.getId()+" : "+note.getTitle()+"  "+note.getContent()+"<br>");
	
}

%>

</div>
</body>
</html>