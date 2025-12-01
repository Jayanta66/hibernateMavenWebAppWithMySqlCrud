<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add notes</title>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<%@include file="all_js_cssjsp.jsp" %>
<%@include file="navbar.jsp" %>

</head>
<body>
    <div class="container-fluid p-0 m-0">
<h1>Please fill your details.</h1>
<!-- ADD FORM  -->

<form action="SaveNoteServlet" method="post">
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    <input name="title" type="text" class="form-control" id="title" placeholder="Enter your note title here ."/>
  </div>
  <div class="mb-3">
    <label for="content" class="content">Note Content</label>
	<textarea name="content" id="content"  placeholder="Enter your content here" class="form-control" style="height:300px;"></textarea>

  </div>
  
  <div class="container text-center">
  
    <button type="submit" class="btn btn-primary">Submit</button>
  
  
  </div>

</form>

</div>

</body>
</html>