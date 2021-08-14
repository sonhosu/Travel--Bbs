package com.bteam.test.model;


import javax.persistence.*;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
@Entity
public class User {
	
	

	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	private Long Id;
	
	@Column(nullable = false)
	private String userId;
	
	@Column(nullable = false)
	private String password;
	
	@Column(nullable= false)
	private String name;
	
	@Column(nullable=false)
	private String email;
	
	@Column(nullable=false)
	private String phoneNumber;
	
	@Column(nullable=false)
	private Long birth;
	
	@Column(nullable = false)
	@Enumerated(value = EnumType.STRING)
	private UserRole role;
	
	
	public User(UserDto userdto) {
		this.userId=userdto.getUserId();
		this.password=userdto.getPassword();
		this.name=userdto.getName();
		this.email=userdto.getEmail();
		this.phoneNumber=userdto.getPhoneNumber();
		this.birth=userdto.getBirth();
		
		
	}
	
public  void update(UserModifyDto userModifyDto) {
		
		this.email=userModifyDto.getEmail();
		this.phoneNumber=userModifyDto.getPhoneNumber();
	}
	public User(String userId, String password, UserRole role ,String phoneNumber,String email,String name,Long birth ) {
		this.userId=userId;
		this.password=password;
		this.name=name;
		this.email=email;
		this.phoneNumber=phoneNumber;
		this.birth=birth;
		this.role=role;
	}
	

public User(String password ,String phoneNumber,String email) {
		this.password=password;
		this.phoneNumber=phoneNumber;
		this.email=email;
	}
	
	
	
}
