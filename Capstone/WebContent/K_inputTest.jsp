<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Input Test</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="jumbotron">
			<h1>NAVBAR SPACE</h1>
			<p>This space belong to space for navbar.</p>
		</div>
	</div>
	<div class="container">
		<form action="K_inputDoing.jsp" method="post">
			<div class="form-group">
				<label for="rentalFee">대여료 : </label> <input type="text"
					class="form-control" id="rentalFee" name="rental" placeholder="Enter rentalFee">
			</div>
			<div class="form-group">
				<label for="deposit">보증금 :</label> <input type="text"
					class="form-control" id="deposit" name="deposit" placeholder="Enter deposit">
			</div>
			<div class="form-group">
				<label for="ableDay">대여가능일수 :</label> <input type="text"
					class="form-control" id="ableDay" name="able" placeholder="Enter ableDay">
			</div>
			<label for="tradeWay">거래방법 : </label>
			<label class="radio-inline"> <input type="radio"
				id="tradeWay" name="trade" value="direct" >직거래
			</label> <label class="radio-inline"> <input type="radio"
				name="trade" value="delivery">택배
			</label>
			<div class="form-group">
				<label for="productCondition">물품상태 :</label> <input type="text"
					class="form-control" id="productCondition" name="condition" placeholder="Enter productCondition">
			</div>
			<div class="form-group">
				<label for="position">위치 :</label> <input type="text"
					class="form-control" id="position" name="position" placeholder="Enter position">
			</div>
			<div class="form-group">
				<label for="productInfo">설명 :</label> <textarea rows="5"
					class="form-control" id="productInfo" name="info" placeholder="Enter productInfo"></textarea>
			</div>	

			<button type="submit" class="btn btn-default">Submit</button>
		</form>
		<br>

	</div>
	<div class="container-fluid">
		<div class="jumbotron">
			<h1>FOOTER SPACE</h1>
			<p>This space belong to space for footer.</p>
		</div>
	</div>
</body>
</html>