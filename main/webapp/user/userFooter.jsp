<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        footer {
            position: fixed; /* 고정 위치 */
            left: 0;
            bottom: 0;
            width: 100%;
            color: white;
            text-align: center;
            background-color: #333; /* 배경색 추가 */
        }
        footer .box {
            display: flex; /* Flexbox 사용 */
            justify-content: space-between; /* 공간을 균등하게 분배 */
            align-items: center; /* 수직 중앙 정렬 */
            padding: 20px; /* 패딩 추가 */
        }
        footer .box div {
            flex: 1; /* 각 div 동일한 너비 */
            padding: 10px; /* 각 div에 패딩 */
        }
        footer ul {
            list-style-type: none; /* 점 제거 */
            padding: 0; /* 패딩 제거 */
            display: flex; /* 가로 정렬 */
            justify-content: center; /* 중앙 정렬 */
            gap: 20px; /* li 간격 추가 */
        }
        footer li {
            display: inline; /* inline으로 설정 */
        }
    </style>
</head>
<body>
    <footer>
        <div class="box w3-light-gray" style="height: 250px;">
            <div>
                <h3>고객 센터</h3>
                <h1>Tel: 7777-7777</h1>
            </div>
            <div>
                <ul>
                    <li>회사소개</li>
                    <li>개인정보처리방침</li>
                    <li>이용약관</li>
                    <li>제휴안내</li>
                </ul>
                <p>
                    주소: 대구광역시 달서구 달구벌대로251안길 15<br>
                    영업시간: 평일 오전 8:30 ~ 9:00<br>
                    COPYRIGHT &copy; 2024 JAVA&JSP GROUP3
                </p>
            </div>
        </div>
    </footer>
</body>
</html>
