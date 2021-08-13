package com.bteam.test.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserModifyDto {

	private String userId;
	
	private String password;
	
	private String userName;
	
	private String email;
	
	private String phoneNumber;
	
	private Long birth;
	
	private boolean admin=false;
	
	
}
