<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-highway.css">
    <style>
    
	 header{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
    
        .headerTop {
            height: 50px;
            margin-right: 40px;
            text-align: right;
            line-height: 50px; /* 수직 중앙 정렬 */
        }
    	
    	#JAVAPLANTLogo{
    		text-align:center;
    		margin-top: 50px;
    		margin-bottom : 30px;
    	}
    
        .w3-bar {
            display: flex; /* Flexbox 사용 */
        }

        .w3-bar-item {
            flex: 1; /* 동일한 너비 */
            min-width: 200px; /* 최소 너비 설정 */
            min-height: 40px; /* 최소 높이 설정 */
            text-align: center; /* 텍스트 중앙 정렬 */
            display: flex; /* Flexbox 사용 */
            align-items: center; /* 수직 중앙 정렬 */
            justify-content: center; /* 수평 중앙 정렬 */
            line-height: 40px; /* 버튼 높이에 맞춰 글자 수직 중앙 정렬 */
            font-weight:bold;
            font-size:large;
        }

        .w3-button {
        	font-weight:bold; 
        	font-size:large;
            min-width: 200px; /* 원하는 최소 너비 설정 */
            min-height: 40px; /* 원하는 최소 높이 설정 */
            align-items: center; /* 수직 중앙 정렬 */
            justify-content: center; /* 수평 중앙 정렬 */
            line-height: 40px; /* 버튼 높이에 맞춰 글자 수직 중앙 정렬 */
        }
    </style>
</head>
<body>
<header>
    <div class = "headerTop">
        <c:choose>
            <c:when test="${sessionScope.u_id eq null}">
                <a href="${pageContext.request.contextPath}/userLogin.usr"> 로그인 </a> 
                															|
                <a href="${pageContext.request.contextPath}/userJoin.usr"> 회원가입 </a> | 
                <a href="${pageContext.request.contextPath}/userJoin.usr"> 주문내역보기 </a> |
                <a href="${pageContext.request.contextPath}/userJoin.usr"> 장바구니 </a> |
                <a href="${pageContext.request.contextPath}/userJoin.usr"> 문의 </a> |
                <a href="${pageContext.request.contextPath}/userJoin.usr"> 상품후기 </a> 
            </c:when>
            <c:otherwise>
            <a href="${pageContext.request.contextPath}/userLogin.usr">로그아웃 </a> |
            																
                <a href="${pageContext.request.contextPath}/userJoin.usr"> 마이페이지 </a> |
                <a href="${pageContext.request.contextPath}/userJoin.usr"> 주문내역보기 </a> |
                <a href="${pageContext.request.contextPath}/userJoin.usr"> 장바구니 </a> |
                <a href="${pageContext.request.contextPath}/userJoin.usr"> 문의 </a> |
                <a href="${pageContext.request.contextPath}/userJoin.usr"> 상품후기 </a> 
            </c:otherwise>
        </c:choose>
    </div>
        <div id = "JAVAPLANTLogo">
            <a href="<%=request.getContextPath()%>/user/userMain.jsp">
                <img src="<%=request.getContextPath()%>/images/logo/JAVAPLANT.png" width="300px"/>
            </a>
        </div>
        
        
      
        <div class="w3-bar w3-highway-green">
            <a href="#" class="w3-bar-item w3-button">Home</a>
            <a href="#" class="w3-bar-item w3-button">천남성과 식물</a>
            <a href="#" class="w3-bar-item w3-button">잎보기 식물</a>
            <a href="#" class="w3-bar-item w3-button">허브 식물</a>
            <a href="#" class="w3-bar-item w3-button">자재관리용품</a>
            <div class="w3-dropdown-hover">
                <button class="w3-button">이벤트</button>
                <div class="w3-dropdown-content w3-bar-block w3-card-4">
                    <a href="#" class="w3-bar-item w3-button">기념일 선물</a>
                    <a href="#" class="w3-bar-item w3-button">화환</a>
                </div>
            </div>
        </div>
        
    </header>
</body>
</html>
