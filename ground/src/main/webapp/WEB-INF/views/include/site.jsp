<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%
	String site = request.getServerName();
	String site_title = "";
	String site_descript = "";	
	String strParam = request.getQueryString();	
	String URL = "http://" + request.getServerName() + request.getAttribute("javax.servlet.forward.request_uri");
	String phone_number = "";
	String phone_img = "";
	String facebook = "";
	String instagram = "";
	String kakaochannel = "";
	String naverblog="";
  
  if(strParam != null){
	  URL = URL + "?" + strParam;
  }
		

	site_title = "크루팩토리 지상직학원, 여행사학원";
	site_descript = "지상직승무원, CRS/DCS자격증, 공항서비스인턴, 대한항공/아시아나항공지상직, 외국항공사지상직, 일본공항지상직취업, 국비지원, 해외취업, 강남";
	phone_number = "02-548-4091";
	phone_img = "/img/top-quick-btn-phone.png";
	facebook = "https://www.facebook.com/crewgs";
	instagram = "https://www.instagram.com/crewfactory_ground";
	kakaochannel = "https://pf.kakao.com/_hxlUNxb";
	naverblog="https://blog.naver.com/crewfac101";
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta name="robots" content="index, follow">
<meta name="subject" content="항공사지상직, 여행사취업">
<meta name="author" content="크루팩토리승무원학원">
<meta name="keywords" content="대한항공채용, 스튜어디스, 승무원, 승무원학원, 대한항공승무원, 승무원되는법, 승무원과외, 승무원학원수강료, 승무원연봉, 스튜어디스연봉, 아시아나승무원, 아시아나항공승무원, 승무원메이크업, 스튜어드, 스튜어디스되는법, 남자승무원, 대한항공스튜어디스, 승무원준비, 크루팩토리, 항공사채용, 강남승무원학원, 승무원채용, 승무원자격요건, 스튜어디스자격조건, 승무원학원추천, 국내항공사, 승무원준비, 승무원면접, 스튜어디스학원, 승무원학원비용, 진에어채용, 에어부산채용, 이스타항공채용, 티웨이항공채용, 에어서울채용, 승무원학원비용, 승무원면접학원, 승무원합격"/>
<meta name="classification" content="크루팩토리항공사지상직, 여행사취업" />
<meta property="og:type" content="website">
<meta property="og:image" content="http://<%=request.getServerName()%>/img/logo.png">
<meta property="og:url" content="<%=URL%>"/>
<link rel="canonical" href="http://<%=request.getServerName()%>">
<meta name="naver-site-verification" content="071ef3f5ed783d52d857aa53d07b16c1b8fe726d"/>
<meta name="google-site-verification" content="KxIrKQFgeRd3l37FScVaPMlbXu6Nn6ULkuiKH7yv_-c" />


