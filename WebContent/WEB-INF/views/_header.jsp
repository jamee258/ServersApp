<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div style="background: #E0E0E0; height: 60px; padding-bottom: 20px;">
	<div id="header-title" style="float: left">
		<h1>Server Database List</h1>
	</div>

	<div
		style="float: right; padding: 10px; padding-bottom: 10px; text-align: right;">

		<!-- User stored in session with attribute: loginedUser -->
		Logged In As <b>${loginedUser.userName}</b> <br /> Search <input
			name="search">

	</div>

</div>