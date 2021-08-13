package com.bteam.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.bteam.test.repository.UserRepository;
import com.bteam.test.model.User;
import com.bteam.test.model.UserDto;
import com.bteam.test.model.UserRole;

import java.util.Optional;

@Service
public class UserService {
	private final UserRepository userRepository;
	private final PasswordEncoder passwordencoder;
	private static final String ADMIN_TOKEN = "AAABnv/xRVklrnYxKZ0aHgTBcXukeZygoC";

	@Autowired
	public UserService(UserRepository userRepository, PasswordEncoder passwordencoder) {
		this.userRepository = userRepository;
		this.passwordencoder = passwordencoder;

	}

	public void registerUser(UserDto userdto) {

		
		String userId = userdto.getUserId();
		
		// 비밀번호 해쉬화	
		String password = passwordencoder.encode(userdto.getPassword());
		
		String name=userdto.getName();
		
		String email= userdto.getEmail();
		
		String phoneNumber=userdto.getPhoneNumber();
				
		Long birth=userdto.getBirth();
		
		UserRole role = UserRole.USER;
				
		
		
		// 회원 ID 중복 확인
		Optional<User> found = userRepository.findByuserId(userId);
		if (found.isPresent()) {
			throw new IllegalArgumentException("중복된  ID 가 존재합니다.");
		}

		
		User user = new User(userId, password, role,phoneNumber,email,name,birth);
		System.out.print(userId + password + role);
		userRepository.save(user);
	}

}
