package com.test.socket.server;

import javax.websocket.OnOpen;
import javax.websocket.server.ServerEndpoint;

//종단점(IP + Port) 생성 + 소켓서버에게 부여
@ServerEndpoint("/server.do")
public class SocketServer {
	
	//여러가지 이벤트 구현
	
	//클라이언트가 연결 요청을 했을 때 발생
	//+ 연결 요청은 자동으로 수락된다.
	//- 이 이벤트가 발생했다면 이미 클라이언트와 연결이 성공된 상태
	@OnOpen
	public void handleOpen() {
		
		System.out.println("클라이언트와 접속되었습니다.");
		
		
	}

}
