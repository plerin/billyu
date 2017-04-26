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


<script>
	$(document).ready(function() {
		$(".K_tradeWay").hide();
		$(".input").click(function() {
			$(".K_productTable").fadeOut();
			$(".K_tradeWay").fadeIn(500);
		});
	});
</script>
</head>
<body>
	<jsp:include page="Y_NavBar.jsp"></jsp:include>
	<div id="holder"></div>
	<div class="container">
		<div class="col-lg-6">

			<h1>이미지를 올려주세요</h1>
			<p id="status">File API & FileReader API not supported</p>
			<p>
				<input type=file>
			</p>
			<p>Select an image from your machine to read the contents of the
				file without using a server</p>
			
			<!-- 
			<p class="lead">
				이미지는 PNG,JPG롤 해주세요<span id="max-size"></span>
			</p>
			<form action="K_view_withBootstrap.jsp" method="post"
				enctype="multipart/form-data">
				<input id="preview" type="file" name="image" size="40" />
				
				
				
				<input type="submit" value="업로드" />
				
				<div id="holder"></div>
			</form>
			-->
			<!--  이미지 미리보기 스크립트 -->
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

					var file = upload.files[0], reader = new FileReader();
					reader.onload = function(event) {
						var img = new Image();
						img.src = event.target.result;
						// note: no onload required since we've got the dataurl...I think! :)
						if (img.width > 560) { // holder width
							img.width = 560;
						}
						holder.innerHTML = '';
						holder.appendChild(img);
					};
					reader.readAsDataURL(file);

					return false;
				};
			</script>


		</div>
		<!-- 이미지 공간마지막줄!! -->
		<div class="col-lg-6">
			<div class="K_productTable">
				<h2>상품 정보 입력</h2>
				<form action="K_inputDoing.jsp" method="post">
					<div class="form-group">
						<label for="rentalFee">제목 : </label> <input type="text"
							class="form-control" id="rentalFee" name="rental"
							placeholder="Enter title">
					</div>
					<div class="form-group">
						<label for="deposit">카테고리 :</label> <input type="text"
							class="form-control" id="deposit" name="deposit"
							placeholder="Enter category">
					</div>
					<div class="form-group">
						<!--  이건 text가 아니라 다른 형식으로받는건 어떨까? -->
						<label for="deposit">수량 :</label> <input type="text"
							class="form-control" id="deposit" name="deposit"
							placeholder="Enter number">
					</div>
					<div class="form-group">
						<label for="deposit">상품상태 :</label> <input type="text"
							class="form-control" id="deposit" name="deposit"
							placeholder="Enter productCondition">
					</div>
					<div class="form-group">
						<label for="productInfo">설명 :</label>
						<textarea rows="5" class="form-control" id="productInfo"
							name="info" placeholder="Enter productInfo"></textarea>
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
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
						<form action="K_inputDoing.jsp" method="post">
							<div class="form-group">
								<label for="rentalFee">대여료 : </label> <input type="text"
									class="form-control" id="rentalFee" name="rental"
									placeholder="Enter rentalFee">
							</div>
							<div class="form-group">
								<label for="deposit">보증금 :</label> <input type="text"
									class="form-control" id="deposit" name="deposit"
									placeholder="Enter deposit">
							</div>
							<div class="form-group">
								<label for="ableDay">대여가능일수 :</label> <input type="text"
									class="form-control" id="ableDay" name="able"
									placeholder="Enter ableDay">
							</div>
							<div class="form-group">
								<label for="position">위치 :</label> <input type="text"
									class="form-control" id="position" name="position"
									placeholder="Enter position">
							</div>
							<label for="tradeWay">거래방법 : </label> <label class="radio-inline">
								<input type="radio" id="tradeWay" name="trade" value="direct">직거래
							</label> <label class="radio-inline"> <input type="radio"
								name="trade" value="delivery">택배
							</label>
							<button type="submit" class="btn btn-default">Submit</button>
						</form>
					</div>
					<div id="trade" class="tab-pane fade">
						<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco
							laboris nisi ut aliquip ex ea commodo consequat.</p>
					</div>
				</div>
			</div>

			<button type="button" class="input btn btn-primary btn-block">다음</button>
		</div>
	</div>



</body>
</html>