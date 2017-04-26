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
					<h2>��ǰ ���� �Է�</h2>
					<form action="K_insertProduct.jsp" method="post">
						<div class="form-group">
							<label for="rentalFee">���� : </label> <input type="text"
								class="form-control" id="title" name="title"
								placeholder="Enter title">
						</div>
						<label for="sel1">ī�װ� (select one):</label> <select
							class="form-control" id="category" name="cetegory">

							<jsp:useBean id="s1" class="test.db.select.SelectCategory"></jsp:useBean>
							
							<option>�Ƿ�</option>
			
						</select>
						<div class="form-group">
							<!--  �̰� text�� �ƴ϶� �ٸ� �������ι޴°� ���? -->
							<label for="deposit">���� :</label> <input type="text"
								class="form-control" id="quantity" name="quantity"
								placeholder="Enter number">
						</div>
						<div class="form-group">
							<label for="tradeWay">��ǰ���� : </label> <label class="radio-inline">
								<input type="radio" id="productcondition" name="condition"
								value="s">S��
							</label> <label class="radio-inline"> <input type="radio"
								name="condition" value="a">A��
							</label> <label class="radio-inline"> <input type="radio"
								name="condition" value="b"> B��
							</label>
						</div>
						<div class="form-group">
							<label for="productInfo">���� :</label>
							<textarea rows="5" class="form-control" id="productinfo"
								name="info" placeholder="Enter productInfo"></textarea>
						</div>
						<input type="submit" value="�Է�" />
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
							<form action="K_insertTrade.jsp" method="post">
								<div class="form-group">
									<label for="rentalFee">�뿩�� : </label> <input type="text"
										class="form-control" id="rentalfee" name="rentalfee"
										placeholder="Enter rentalFee">
								</div>
								<div class="form-group">
									<label for="deposit">������ :</label> <input type="text"
										class="form-control" id="deposit" name="deposit"
										placeholder="Enter deposit">
								</div>
								<div class="form-group">
									<label for="ableDay">�뿩�����ϼ� :</label> <input type="text"
										class="form-control" id="period" name="period"
										placeholder="Enter ableDay">
								</div>
								<label for="tradeWay">�ŷ���� : </label> <label
									class="radio-inline"> <input type="radio" id="tradeWay"
									name="trade" value="direct">���ŷ�
								</label> <label class="radio-inline"> <input type="radio"
									name="trade" value="delivery">�ù�
								</label>
								<button type="submit" class="btn btn-default">Submit</button>
							</form>
						</div>
						<div id="trade" class="tab-pane fade">
							<form action="K_inputDoing.jsp" method="post">
								<div class="form-group">
									<label for="rentalFee">�Ǹűݾ� : </label> <input type="text"
										class="form-control" id="price" name="price"
										placeholder="Enter rentalFee">
								</div>
								<label for="tradeWay">�ŷ���� : </label> <label
									class="radio-inline"> <input type="radio" id="tradeWay"
									name="trade" value="direct">���ŷ�
								</label> <label class="radio-inline"> <input type="radio"
									name="trade" value="delivery">�ù�
								</label> <input type="submit" value="�Է�" />
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