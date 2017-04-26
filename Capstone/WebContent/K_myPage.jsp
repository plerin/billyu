<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="Y_NavBar.jsp"></jsp:include>
	<br />
	<br />
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="#">MyPage</a></li>
					<li><a href="#">올린상품</a></li>
					<li><a href="#">구매상품</a></li>
					<li><a href="#">계정수정</a></li>
					<li><a href="#">계정탈퇴</a></li>
				</ul>
			</div>
			<div class="col-lg-9">
				<div class="row">
					<div class="col-lg-12">
						<h1>내가 올린 상품 목록</h1><hr />
					</div>
				</div>
				<div class="row">
					<div class="col-lg-10">
						<div class="panel panel-danger motion post">
					<div class="panel-heading" style="height: 30px">
						<p style="float: right;">+관심상품담기</p>
					</div>
					<div class="panel-body">
						<div class="col-xs-3 col-md-3">
							<a href="K_view_withBootstrap.jsp"><img class="img-rounded"
								src="img/ramen.JPG" width="100%" height="100%" alt="" /></a>
						</div>
						<div class="col-xs-6 col-md-3">
							<a href="K_view_withBootstrap.jsp">나가사끼 라면을 대여합니다~ 일단 신청해
								보세요~~라면도 대여가 되네???</a>
						</div>
						<div class="col-xs-1 col-md-2">
							대여료(원)<br />
							<br />1일/10,000,000
						</div>
						<div class="col-xs-1 col-md-2">
							보증금(원)<br />
							<br />500,000,000
						</div>
						<div class="col-xs-1 col-md-2">
							대여기간(일)<br />
							<br />1000일
						</div>
					</div>
				</div> <!--  상품 리스트 패널 마지막 -->
					</div>
					<div class="col-lg-2">
						<button type="button" class="btn btn-md btn-primary btn-block">메시지</button>
						<button type="button" class="btn btn-md btn-info btn-block">대여</button>
						<button type="button" class="btn btn-md btn-danger btn-block">판매</button>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-10">
						<div class="panel panel-danger motion post">
					<div class="panel-heading" style="height: 30px">
						<p style="float: right;">+관심상품담기</p>
					</div>
					<div class="panel-body">
						<div class="col-xs-3 col-md-3">
							<a href="K_view_withBootstrap.jsp"><img class="img-rounded"
								src="img/ramen.JPG" width="100%" height="100%" alt="" /></a>
						</div>
						<div class="col-xs-6 col-md-3">
							<a href="K_view_withBootstrap.jsp">나가사끼 라면을 대여합니다~ 일단 신청해
								보세요~~라면도 대여가 되네???</a>
						</div>
						<div class="col-xs-1 col-md-2">
							대여료(원)<br />
							<br />1일/10,000,000
						</div>
						<div class="col-xs-1 col-md-2">
							보증금(원)<br />
							<br />500,000,000
						</div>
						<div class="col-xs-1 col-md-2">
							대여기간(일)<br />
							<br />1000일
						</div>
					</div>
				</div> <!--  상품 리스트 패널 마지막 -->
					</div>
					<div class="col-lg-2">
						<button type="button" class="btn btn-md btn-primary btn-block">메시지</button>
						<button type="button" class="btn btn-md btn-info btn-block">대여</button>
						<button type="button" class="btn btn-md btn-danger btn-block">판매</button>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-10">
						<div class="panel panel-danger motion post">
					<div class="panel-heading" style="height: 30px">
						<p style="float: right;">+관심상품담기</p>
					</div>
					<div class="panel-body">
						<div class="col-xs-3 col-md-3">
							<a href="K_view_withBootstrap.jsp"><img class="img-rounded"
								src="img/ramen.JPG" width="100%" height="100%" alt="" /></a>
						</div>
						<div class="col-xs-6 col-md-3">
							<a href="K_view_withBootstrap.jsp">나가사끼 라면을 대여합니다~ 일단 신청해
								보세요~~라면도 대여가 되네???</a>
						</div>
						<div class="col-xs-1 col-md-2">
							대여료(원)<br />
							<br />1일/10,000,000
						</div>
						<div class="col-xs-1 col-md-2">
							보증금(원)<br />
							<br />500,000,000
						</div>
						<div class="col-xs-1 col-md-2">
							대여기간(일)<br />
							<br />1000일
						</div>
					</div>
				</div> <!--  상품 리스트 패널 마지막 -->
					</div>
					<div class="col-lg-2">
						<button type="button" class="btn btn-md btn-primary btn-block">메시지</button>
						<button type="button" class="btn btn-md btn-info btn-block">대여</button>
						<button type="button" class="btn btn-md btn-danger btn-block">판매</button>
					</div>
				</div>
				
			</div>
			
		</div>
	</div>


</body>
</html>