package com.bteam.test.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.bteam.test.model.User;
import com.bteam.test.model.UserModifyDto;
import com.bteam.test.repository.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class UserModifyService {
	private final UserRepository userRepository;

@Transactional
	public Long update(Long id,UserModifyDto userModifyDto ) {
		User user =userRepository.findById(id).orElseThrow(
                () -> new NullPointerException("아이디가 없습니다.")
        );
		user.update(userModifyDto);
		return id;
	}
}
