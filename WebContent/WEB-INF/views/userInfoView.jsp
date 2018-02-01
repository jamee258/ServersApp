<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="jquery-3.2.1.min.js"></script>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>User Info</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/style.css" />
</head>
<body>

	<jsp:include page="_menu.jsp"></jsp:include>
	<jsp:include page="_header.jsp"></jsp:include>
	<jsp:include page="_footer.jsp"></jsp:include>

	<h3>Welcome ${user.userName}</h3>

	User Name:
	<b>${user.userName}</b>
	<br> Gender:
	<b>${user.gender}</b>
	<br>

	<jsp:include page="_footer.jsp"></jsp:include>

</body>
</html>