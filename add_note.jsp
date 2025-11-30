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
<h1>Plase fill your details.</h1>
<!-- ADD FORM  -->

<form action="SaveNoteServlet" method="post">
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    <input type="text" class="form-control" id="title" placeholder="Enter your note title here ." aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="content" class="content">Note Content</label>
	<textarea id="content" placeholder="Enter your content" class="form-control"></textarea>

  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

</div>

</body>
</html>