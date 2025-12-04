<%@page import="org.hibernate.Transaction"%>
<%@page import="myweb.Note"%>
<%@page import="myweb.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>

	<%@include file="all_js_cssjsp.jsp" %>

</head>
<body>

<div class="container-fluid p-0 m-0">
<%@include file="navbar.jsp" %>

<h1>Edit your note</h1>

<%

int noteId=Integer.parseInt(request.getParameter("note_id").trim());
Session s = FactoryProvider.getFactory().openSession();
Transaction tx = s.beginTransaction();

Note note = (Note)s.get(Note.class, noteId);


s.persist(note);

tx.commit();

s.close();

%>


<form method="post" action="SaveNoteServlet">
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    <input name="title" type="text" class="form-control" id="title" placeholder="Enter your note title here ." value=<%=note.getTitle() %> required/>
  </div>
  <div class="mb-3">
    <label for="content" class="content">Note Content</label>
	<textarea name="content" id="content"  placeholder="Enter your content here" class="form-control" style="height:200px; width:600px;" required><%=note.getContent()%></textarea>

  </div>
  
  <div class="container text-center">
  
    <button type="submit" class="btn btn-success">Submit</button>
  
  
  </div>

</form>


</div>

</body>
</html>