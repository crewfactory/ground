<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<%@ include file="../include/site.jsp"%>
<title><%= site_title %>-로그인</title>
<meta name="description" content="<%= site_descript %>" />
<meta property="og:title" content="<%= site_title %>">
<meta property="og:description" content="<%= site_descript %>">
<%@ include file="../include/header.jsp"%>

</head>
<body>
<%@ include file="../include/nav.jsp"%>
<%@ include file="../include/floating-left.jsp"%>

<div class="container-fluid">
	<div class="row member-row">
		<div class="col-12 mt-5 text-center">
			<p class="font-40 my-2">Welcome,</p>
			<p class="font-16 my-2 font-gray">크루팩토리 승무원아카데미에 오신것을 환영합니다.</p>
			<p class="font-14 mt-5 my-2 font-gray">로그인을 위하여 아이디/비밀번호를 입력하여 주세요.</p>
			<form role="form" name="login" id="login" method="post" action="loginCheck.do" data-toggle="validator">
 			<input type="hidden" name="reurl" value="">
 			<div class="card bg-light-gray">
				<div class="card-body">
					<div class="form-group">
						<div class="input-group">
							<!-- <img src="/img/ico-login-id.png" class="mx-2"> -->
							<input type="text" class="form-control input-group-append" name="userid" id="userid" maxlength="20" placeholder="아이디" data-error="아이디를 입력하세요." required>
                  </div>
                  <div class="pt-1 text-left help-block with-errors text-danger"></div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<!-- <img src="/img/ico-login-pw.png" class="mx-2"> -->
							<input type="password" class="form-control input-group-append" name="userpw" id="userpw" maxlength="20" placeholder="비밀번호" data-error="비밀번호를 입력하세요." required>
                  </div>
                  <div class="pt-1 text-left help-block with-errors text-danger"></div>
					</div>
					<button type="submit" class="mr-2 btn btn-primary btn-lg btn-block" style="height:60px;">로그인</button>
            </div>
			</div>			
			</form>
		</div>
		<div class="col-12 my-2 text-right">
			<span class="mx-3"><a href="/member/join.do">회원가입</a></span><span class="mx-3"><a href="/member/find.do">아이디/비밀번호찾기</a></span>
		</div>
<!-- 		<div class="col-12">
			<button class="font-20 col-12 text-center" style="height:81px; background:url('/img/ico-login-naver.png') no-repeat left; background-color:#1dc800;">
				네이버아이디로 로그인
			</button>
			<button class="font-20 mt-2 col-12 text-center" style="height:81px; background:url('/img/ico-login-kakao.png') no-repeat left; background-color:#f5e901;">
				카카오아이디로 로그인
			</button>
		</div> -->
	</div>
</div>

<div class="containter-fluid" style="height:15rem;"></div>

<!-- 하단링크 -->
<%@ include file="../include/footlink.jsp"%>

<!-- 상담신청 -->
<%@ include file="../include/counsel.jsp"%>

<footer>
	<%@ include file="../include/footer.jsp"%>
</footer>

<script>
$(document).ready(function() {
 	$("#login").validator();	//폼발리데이터 	
});

$(document).ready(function() {
 	var join = "${join_result}";
 	if(join == "succeed"){
 		alert("회원가입이 완료되었습니다. 로그인해 주시기 바랍니다.")
 	}
});

$(document).ready(function() {
 	var resultmsg = "${result}";
 	console.log(resultmsg)
 	if(resultmsg == "succeed"){
 		location.href = "/";
 	}else if(resultmsg == "failed"){
 		alert("아이디/비밀번호가 일치하지 않습니다.")
 	}
});
</script>

</body>
</html>