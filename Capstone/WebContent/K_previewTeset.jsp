<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12"></div>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<p id="status">File API & FileReader API not supported</p>
				<input id="i" type=submit>
				<p>
					<input id="i" type=file>
				</p>
				<p>Select an image from your machine to read the contents of the
					file without using a server</p>
				<div id="holder"></div>
			</div>
			<div class="col-lg-6">
				<div class="K_productTable">
					<h2>상품 정보 입력</h2>
					<form action="K_insertProduct.jsp" method="post">
						<div class="form-group">
							<label for="rentalFee">제목 : </label> <input type="text"
								class="form-control" id="title" name="title"
								placeholder="Enter title">
						</div>
						<label for="sel1">카테고리 (select one):</label> <select
							class="form-control" id="category" name="cetegory">

							<jsp:useBean id="s1" class="test.db.select.SelectCategory"></jsp:useBean>
							
							<option>의류</option>
			
						</select>
						<div class="form-group">
							<!--  이건 text가 아니라 다른 형식으로받는건 어떨까? -->
							<label for="deposit">수량 :</label> <input type="text"
								class="form-control" id="quantity" name="quantity"
								placeholder="Enter number">
						</div>
						<div class="form-group">
							<label for="tradeWay">상품상태 : </label> <label class="radio-inline">
								<input type="radio" id="productcondition" name="condition"
								value="s">S급
							</label> <label class="radio-inline"> <input type="radio"
								name="condition" value="a">A급
							</label> <label class="radio-inline"> <input type="radio"
								name="condition" value="b"> B급
							</label>
						</div>
						<div class="form-group">
							<label for="productInfo">설명 :</label>
							<textarea rows="5" class="form-control" id="productinfo"
								name="info" placeholder="Enter productInfo"></textarea>
						</div>
						<input type="submit" value="입력" />
					</form>
				</div>
				<div class="K_tradeWay">
					<h2>판매 방식 입력</h2>
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="#rental">대여</a></li>
						<li><a data-toggle="tab" href="#trade">판매</a></li>
					</ul>

					<div class="tab-content">
						<div id="rental" class="tab-pane fade in active">
							<form action="K_insertTrade.jsp" method="post">
								<div class="form-group">
									<label for="rentalFee">대여료 : </label> <input type="text"
										class="form-control" id="rentalfee" name="rentalfee"
										placeholder="Enter rentalFee">
								</div>
								<div class="form-group">
									<label for="deposit">보증금 :</label> <input type="text"
										class="form-control" id="deposit" name="deposit"
										placeholder="Enter deposit">
								</div>
								<div class="form-group">
									<label for="ableDay">대여가능일수 :</label> <input type="text"
										class="form-control" id="period" name="period"
										placeholder="Enter ableDay">
								</div>
								<label for="tradeWay">거래방법 : </label> <label
									class="radio-inline"> <input type="radio" id="tradeWay"
									name="trade" value="direct">직거래
								</label> <label class="radio-inline"> <input type="radio"
									name="trade" value="delivery">택배
								</label>
								<button type="submit" class="btn btn-default">Submit</button>
							</form>
						</div>
						<div id="trade" class="tab-pane fade">
							<form action="K_inputDoing.jsp" method="post">
								<div class="form-group">
									<label for="rentalFee">판매금액 : </label> <input type="text"
										class="form-control" id="price" name="price"
										placeholder="Enter rentalFee">
								</div>
								<label for="tradeWay">거래방법 : </label> <label
									class="radio-inline"> <input type="radio" id="tradeWay"
									name="trade" value="direct">직거래
								</label> <label class="radio-inline"> <input type="radio"
									name="trade" value="delivery">택배
								</label> <input type="submit" value="입력" />
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<script>
		var upload = document.getElementsByTagName('input')[0], holder = document
				.getElementById('holder'), state = document
				.getElementById('status');

		if (typeof window.FileReader === 'undefined') {
			state.className = 'fail';
		} else {
			state.className = 'success';
			state.innerHTML = 'File API & FileReader available';
		}

		upload.onchange = function(e) {
			e.preventDefault();

			var file = upload.files[1], reader = new FileReader();
			reader.onload = function(event) {
				var img = new Image();
				img.src = event.target.result;
				// note: no onload required since we've got the dataurl...I think! :)
				if (img.width > 560) { // holder width
					img.width = 300;
				}
				holder.innerHTML = '';
				holder.appendChild(img);
			};
			reader.readAsDataURL(file);

			return false;
		};
	</script>
</body>
</html>