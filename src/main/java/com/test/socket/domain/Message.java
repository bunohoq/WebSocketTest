package com.test.socket.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Message {
	
	private String code;
	private String sender;
	private String recevier;
	private String content;
	private String regdate;
 

}
