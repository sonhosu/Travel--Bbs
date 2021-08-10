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

		UserRole role = UserRole.USER;

		String userid = userdto.getUserid();

		// 비밀번호 해쉬화
		String password = passwordencoder.encode(userdto.getPassword());

		System.out.print(userid + password + role);
		// 회원 ID 중복 확인
		Optional<User> found = userRepository.findByuserid(userid);
		if (found.isPresent()) {
			throw new IllegalArgumentException("중복된  ID 가 존재합니다.");
		}

		// 사용자 ROLE 확인

		User user = new User(userid, password, role);
		System.out.print(userid + password + role);
		userRepository.save(user);
	}

}
