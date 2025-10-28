<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
</head>
<body class="narrow">	
	<!-- test.jsp -->
	<h1>WebSocket <small>사용법</small></h1>
	
	<div>
		<button type="button" id="btn-connect">연결하기</button>
		<button type="button" id="btn-disconnect">연결끊기</button>
	</div>
	
	<hr>
	
	<div class="message full" id="message"></div>
	
	<script src="https://cdn.jsdelivr.net/npm/dayjs@1.11.18/dayjs.min.js"></script>
	<script>
	
		//서버측 종단점(End-point) = IP Address + Port Number
		const url = 'ws://localhost:8080/socket/server.do';
		
		//웹 소켓
		let ws;
	
		document.getElementById("btn-connect").onclick = () => {
			
			log('연결하기 버튼을 클릭했습니다.');
			
			//1. 소켓 생성
			//2. 서버 접속(전화 걸기) + 연결
			//3. 통신
			//4. 서버 접속 종료
			
			//1. 소켓 생성 + 2. 서버 접속(전화 걸기) + 연결
			log('소켓을 생성합니다.');
			ws = new WebSocket(url); //전화기 생성 + 전화 걸기
			log('소켓을 생성했습니다. > ' + ws.readyState);
			
			//소켓 상태 프로퍼티
			//ws.readyState
			//0: 연결 전
			//1: 연결 완료(***)
			//2: 연결 종료 중
			//3: 연결 종료
			
		};
		
		document.getElementById("btn-disconnect").onclick = () => {
			
			
			
		};
		
		function log(msg) {
			document.getElementById('message').innerHTML 
				= `<div>[\${dayjs().format('HH:mm:ss')}] \${msg}</div>` 
				+ document.getElementById('message').innerHTML;
		}
		
		//console.log(new Date().toLocaleTimeString());
		//console.log(dayjs().format('YYYY-MM-DD HH:mm:ss'));
	
	</script>
	
</body>
</html>














