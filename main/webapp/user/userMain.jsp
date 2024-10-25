<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>JAVAPLANT</title>
    <style>
        .mySlides {display: none;}
        .w3-content w3-section {
            margin-top: 0; 
        }
       .product-section {
	    display: flex;
	    justify-content: space-around;
	    margin: 20px auto; /* 수직 중앙 정렬을 위해 auto 설정 */
	    border: 1px solid black; 
	    width: 80%; 
	    max-width: 1200px; /* 선택적으로 최대 너비 설정 (필요시) */
	}
        .product {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div id="wrap">    
        <jsp:include page="/user/userHeader.jsp"/>    
        
        <div class="w3-content w3-section" style="max-width:100%; max-height:300px; overflow:hidden;">
            <img class="mySlides" src="<%=request.getContextPath()%>/images/slide/slide1.jpg" style="width:100%">
            <img class="mySlides" src="<%=request.getContextPath()%>/images/slide/slide2.jpg" style="width:100%">
            <img class="mySlides" src="<%=request.getContextPath()%>/images/slide/slide3.jpg" style="width:100%">
            <img class="mySlides" src="<%=request.getContextPath()%>/images/slide/slide4.jpg" style="width:100%">
            <img class="mySlides" src="<%=request.getContextPath()%>/images/slide/slide5.jpg" style="width:100%">
        </div>

        <script>
            var myIndex = 0;
            carousel();
            
            function carousel() {
                var i;
                var x = document.getElementsByClassName("mySlides");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";  
                }
                myIndex++;
                if (myIndex > x.length) {myIndex = 1}    
                x[myIndex-1].style.display = "block";  
                setTimeout(carousel, 10000); 
            }
        </script>  
        
        <!-- -----------------------------slide banner끝---------------------------------- -->

        <div class="product-section">
            <div class="product">
                <h4>베스트 상품 1</h4>
                <img src="<%=request.getContextPath()%>/images/products/best1.jpg" alt="베스트 상품 1" style="width:100%;">
                <p>상품 설명</p>
                <button>구매하기</button>
            </div>
            <div class="product">
                <h4>베스트 상품 2</h4>
                <img src="<%=request.getContextPath()%>/images/products/best2.jpg" alt="베스트 상품 2" style="width:100%;">
                <p>상품 설명</p>
                <button>구매하기</button>
            </div>
            <!-- 추가 상품을 여기에 더 추가할 수 있습니다 -->
        </div>

	
		<h1>Best Products</h1>
		<ul>
		    <c:forEach var="product" items="${bestProducts}">
		        <li>${product.name} - ${product.price}</li>
		    </c:forEach>
		</ul>
		
		<h1>All Products</h1>
		<ul>
		    <c:forEach var="product" items="${allProducts}">
		        <li>${product.name} - ${product.price}</li>
		    </c:forEach>
		</ul>
		
		<!-- 전체 상품 섹션 -->
		<div class="product-section">
		    <c:forEach var="product" items="${allProducts}">
		        <div class="product">
		            <h4>${product.name}</h4>
		            <img src="${product.imageUrl}" alt="${product.name}" style="width:100%;">
		            <p>${product.description}</p>
		            <button>구매하기</button>
		        </div>
		    </c:forEach>
		</div>

        <jsp:include page="/user/userFooter.jsp"/>     
    </div>
</body>
</html>
