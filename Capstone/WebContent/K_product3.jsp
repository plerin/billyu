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

			<h1>�̹����� �÷��ּ���</h1>
			<p id="status">File API & FileReader API not supported</p>
			<p>
				<input type=file>
			</p>
			<p>Select an image from your machine to read the contents of the
				file without using a server</p>
			
			<!-- 
			<p class="lead">
				�̹����� PNG,JPG�� ���ּ���<span id="max-size"></span>
			</p>
			<form action="K_view_withBootstrap.jsp" method="post"
				enctype="multipart/form-data">
				<input id="preview" type="file" name="image" size="40" />
				
				
				
				<input type="submit" value="���ε�" />
				
				<div id="holder"></div>
			</form>
			-->
			<!--  �̹��� �̸����� ��ũ��Ʈ -->
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
		<!-- �̹��� ������������!! -->
		<div class="col-lg-6">
			<div class="K_productTable">
				<h2>��ǰ ���� �Է�</h2>
				<form action="K_inputDoing.jsp" method="post">
					<div class="form-group">
						<label for="rentalFee">���� : </label> <input type="text"
							class="form-control" id="rentalFee" name="rental"
							placeholder="Enter title">
					</div>
					<div class="form-group">
						<label for="deposit">ī�װ� :</label> <input type="text"
							class="form-control" id="deposit" name="deposit"
							placeholder="Enter category">
					</div>
					<div class="form-group">
						<!--  �̰� text�� �ƴ϶� �ٸ� �������ι޴°� ���? -->
						<label for="deposit">���� :</label> <input type="text"
							class="form-control" id="deposit" name="deposit"
							placeholder="Enter number">
					</div>
					<div class="form-group">
						<label for="deposit">��ǰ���� :</label> <input type="text"
							class="form-control" id="deposit" name="deposit"
							placeholder="Enter productCondition">
					</div>
					<div class="form-group">
						<label for="productInfo">���� :</label>
						<textarea rows="5" class="form-control" id="productInfo"
							name="info" placeholder="Enter productInfo"></textarea>
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
			<div class="K_tradeWay">
				<h2>�Ǹ� ��� �Է�</h2>
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#rental">�뿩</a></li>
					<li><a data-toggle="tab" href="#trade">�Ǹ�</a></li>
				</ul>

				<div class="tab-content">
					<div id="rental" class="tab-pane fade in active">
						<form action="K_inputDoing.jsp" method="post">
							<div class="form-group">
								<label for="rentalFee">�뿩�� : </label> <input type="text"
									class="form-control" id="rentalFee" name="rental"
									placeholder="Enter rentalFee">
							</div>
							<div class="form-group">
								<label for="deposit">������ :</label> <input type="text"
									class="form-control" id="deposit" name="deposit"
									placeholder="Enter deposit">
							</div>
							<div class="form-group">
								<label for="ableDay">�뿩�����ϼ� :</label> <input type="text"
									class="form-control" id="ableDay" name="able"
									placeholder="Enter ableDay">
							</div>
							<div class="form-group">
								<label for="position">��ġ :</label> <input type="text"
									class="form-control" id="position" name="position"
									placeholder="Enter position">
							</div>
							<label for="tradeWay">�ŷ���� : </label> <label class="radio-inline">
								<input type="radio" id="tradeWay" name="trade" value="direct">���ŷ�
							</label> <label class="radio-inline"> <input type="radio"
								name="trade" value="delivery">�ù�
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

			<button type="button" class="input btn btn-primary btn-block">����</button>
		</div>
	</div>



</body>
</html>