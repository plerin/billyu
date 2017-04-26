<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<style>
.toggles {
  width: 800px;
  margin: auto;
  display: block;
  clear: both;
  overflow: hidden;
}

.button {
  border: 2px solid #2E2EFE;
  border-radius: 40px;
  color: #2E2EFE;
  display: block;
  float: left;
  margin: auto;
  padding: 10px;
  width: 150px;
  cursor: pointer;
  font-size: 14px;
  margin: 5px 5px;
}

.posts {
  width: 800px;
  margin: 2em auto;
  
}

.panel-group{
  font: 16px/18px Arial;
  width: 1000px;
  height: 150px;
  margin: 10px auto;
  display: block;
  text-align: center;
}
</style>
</head>
<body>
<jsp:include page="Y_NavBar.jsp" />
<br />

<div id="wrapper">

<div class="toggles">
  <button class="button" id="showall">전체보기</button> 
  <button class="button" id="web">의류</button>
  <button class="button" id="ux">식품</button>
  <button class="button" id="graphic">Graphic Design</button>
  <button class="button" id="web">의류</button>
  <button class="button" id="ux">식품</button>
  <button class="button" id="graphic">Graphic Design</button>
  <button class="button" id="showall">전체보기</button> 
  <button class="button" id="web">의류</button>
  <button class="button" id="ux">식품</button>
  <button class="button" id="graphic">Graphic Design</button>
  <button class="button" id="web">의류</button>
  <button class="button" id="ux">식품</button>
  <button class="button" id="graphic">Graphic Design</button>
  <button class="button" id="ux">식품</button>
  <button class="button" id="graphic">Graphic Design</button>
</div>
<center>
<div style="width:1000px">
<h2 style="float:left;display:inline-block;">"라면" 검색 결과</h2>
<div style="background:#428bca;width:20px;height:20px;display:inline-block;float:right"> </div><p style="display:inline-block;float:right">대여</p>
<div style="background:#ebcccc;width:20px;height:20px;display:inline-block;float:right"> </div><p style="display:inline-block;float:right">판매</p>
</div>
</center>

  <div class="panel-group posts" style="clear:both">
    <div class="panel panel-primary motion post">
      <div class="panel-heading" style="height:30px"><p style="float:right;">+관심상품담기</p></div>
      <div class="panel-body">
      <div class="col-xs-3 col-md-3"><a href="K_view.jsp"><img class="img-rounded" src="img/ramen.JPG" width="100%" height="100%" alt="" /></a></div>
      <div class="col-xs-6 col-md-3"><a href="K_view.jsp">나가사끼 라면을 대여합니다~ 일단 신청해 보세요~~라면도 대여가 되네???</a></div>
      <div class="col-xs-1 col-md-2">대여료(원)<br /><br />1일/10,000,000</div>
      <div class="col-xs-1 col-md-2">보증금(원)<br /><br />500,000,000</div>
      <div class="col-xs-1 col-md-2">대여기간(일)<br /><br />1000일</div>
      </div>
    </div>
    <div class="panel panel-danger web post">
      <div class="panel-heading" style="height:30px"><p style="float:right;">+관심상품담기</p></div>
      <div class="panel-body">
      <div class="col-xs-3 col-md-3"><a href="K_view.jsp"><img class="img-rounded" src="img/ramen.JPG" width="100%" height="100%" alt="" /></a></div>
      <div class="col-xs-6 col-md-3"><a href="K_view.jsp">나가사끼 라면을 대여합니다~ 일단 신청해 보세요~~라면도 대여가 되네???</a></div>
      <div class="col-xs-1 col-md-2">대여료(원)<br /><br />1일/10,000,000</div>
      <div class="col-xs-1 col-md-2">보증금(원)<br /><br />500,000,000</div>
      <div class="col-xs-1 col-md-2">대여기간(일)<br /><br />1000일</div>
      </div>
    </div>
    
    <div class="panel panel-danger motion post">
      <div class="panel-heading" style="height:30px"><p style="float:right;">+관심상품담기</p></div>
      <div class="panel-body">
      <div class="col-xs-3 col-md-3"><a href="K_view.jsp"><img class="img-rounded" src="img/ramen.JPG" width="100%" height="100%" alt="" /></a></div>
      <div class="col-xs-6 col-md-3"><a href="K_view.jsp">나가사끼 라면을 대여합니다~ 일단 신청해 보세요~~라면도 대여가 되네???</a></div>
      <div class="col-xs-1 col-md-2">대여료(원)<br /><br />1일/10,000,000</div>
      <div class="col-xs-1 col-md-2">보증금(원)<br /><br />500,000,000</div>
      <div class="col-xs-1 col-md-2">대여기간(일)<br /><br />1000일</div>
      </div>
    </div><div class="panel panel-danger motion post">
      <div class="panel-heading" style="height:30px"><p style="float:right;">+관심상품담기</p></div>
      <div class="panel-body">
      <div class="col-xs-3 col-md-3"><a href="K_view.jsp"><img class="img-rounded" src="img/ramen.JPG" width="100%" height="100%" alt="" /></a></div>
      <div class="col-xs-6 col-md-3"><a href="K_view.jsp">나가사끼 라면을 대여합니다~ 일단 신청해 보세요~~라면도 대여가 되네???</a></div>
      <div class="col-xs-1 col-md-2">대여료(원)<br /><br />1일/10,000,000</div>
      <div class="col-xs-1 col-md-2">보증금(원)<br /><br />500,000,000</div>
      <div class="col-xs-1 col-md-2">대여기간(일)<br /><br />1000일</div>
      </div>
    </div><div class="panel panel-danger ux post">
      <div class="panel-heading" style="height:30px"><p style="float:right;">+관심상품담기</p></div>
      <div class="panel-body">
      <div class="col-xs-3 col-md-3"><a href="K_view.jsp"><img class="img-rounded" src="img/ramen.JPG" width="100%" height="100%" alt="" /></a></div>
      <div class="col-xs-6 col-md-3"><a href="K_view.jsp">나가사끼 라면을 대여합니다~ 일단 신청해 보세요~~라면도 대여가 되네???</a></div>
      <div class="col-xs-1 col-md-2">대여료(원)<br /><br />1일/10,000,000</div>
      <div class="col-xs-1 col-md-2">보증금(원)<br /><br />500,000,000</div>
      <div class="col-xs-1 col-md-2">대여기간(일)<br /><br />1000일</div>
      </div>
    </div><div class="panel panel-danger motion post">
      <div class="panel-heading" style="height:30px"><p style="float:right;">+관심상품담기</p></div>
      <div class="panel-body">
      <div class="col-xs-3 col-md-3"><a href="K_view.jsp"><img class="img-rounded" src="img/ramen.JPG" width="100%" height="100%" alt="" /></a></div>
      <div class="col-xs-6 col-md-3"><a href="K_view.jsp">나가사끼 라면을 대여합니다~ 일단 신청해 보세요~~라면도 대여가 되네???</a></div>
      <div class="col-xs-1 col-md-2">대여료(원)<br /><br />1일/10,000,000</div>
      <div class="col-xs-1 col-md-2">보증금(원)<br /><br />500,000,000</div>
      <div class="col-xs-1 col-md-2">대여기간(일)<br /><br />1000일</div>
      </div>
    </div>
    <br />
    
  </div>

</div>
<br />
<script>
$(function() {
    $('.toggles button').click(function(){
      var get_id = this.id;
      var get_current = $('.posts .' + get_id);
  
        $('.post').not( get_current ).hide(500);
        get_current.show(500);
    });
    $('#showall').click(function() {
        $('.post').show(500);
    });
}); 
</script>

</body>
</html>