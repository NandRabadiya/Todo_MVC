<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false"  %>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title><c:out value="${page }"/></title>
</head>
<body>
	<div class="container mt-5 ">

		<h1 class="text-center">Welcome to TODO manager</h1>
		
	<c:if test="${not empty msg }">
		<div class="alert alert-success">
		<b><c:out value="${msg }" /></b>
		</div>
	
	</c:if>
		
		<div class="row mt-4">
			<div class="col-md-2">
				<div class="list-group">
					<button type="button"
						class="list-group-item list-group-item-action active">
						Menu</button>
					<a href='<c:url value='/add'></c:url>'
						class="list-group-item list-group-item-action">Add Todo</a> <a
						href='<c:url value='/home'></c:url>'
						class="list-group-item list-group-item-action">View Todo </a>
				</div>
			</div>
			<div class="col-md-10">
				<c:if test="${page=='home'}">
					<h1 class="text-center">ALL TODOS</h1>
					
					<c:forEach items="${todos }" var="t">
					
					<div class="card">
					
					<div class="card-body">
					<h3><c:out value="${t.todoTitle }"></c:out> </h3>
					<p><c:out value="${t.todoContent }"></c:out></p>
					</div>
					</div>	
					
					
					
					</c:forEach>
					
					
					
					
				</c:if>
				
				
				
				
				
				
				<c:if test="${page=='add'}">
					<h1 class="text-center">ADD  TODOS</h1>
					<br>
					<form:form action='saveTodo' method="post" modelAttribute="todo" >
					
							<div class="form-group">
								<form:input path="todoTitle" cssClass="form-control" placeholder="Enter Your Todo Title"/>
							</div>
							
							<div class="form-group">
								<form:textarea path="todoContent" cssClass="form-control mt-3" placeholder="Enter Your Todo Content" cssStyle="height:300px"/>
							</div>
							
							<div class="container text-center mt-3">
							<button class="btn btn-outline-success">Add Todo</button>
							</div>
										
					</form:form>
				
					
					
				</c:if>


				
			</div>
		</div>
	</div>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>