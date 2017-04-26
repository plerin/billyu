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
			<div class="col-lg-12">
				<p id="status">File API & FileReader API not supported</p>
				<input id="i" type=submit>
				<p>
					<input id="i" type=file>
				</p>
				<p>Select an image from your machine to read the contents of the
					file without using a server</p>

			</div>
		</div>
		<div class="row">
			<div class="col-lg-4">왕키</div>
			<div class="col-lg-8">

				<div id="holder"></div>
			</div>
		</div>
	</div>

	<script>
		var upload = document.getElementsByTagName('input')[1], holder = document
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
</body>
</html>