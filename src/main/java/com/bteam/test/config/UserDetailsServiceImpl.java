package com.bteam.test.config;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.bteam.test.repository.UserRepository;
import com.bteam.test.model.User;

import java.util.Optional;

@Service
public class UserDetailsServiceImpl implements UserDetailsService{

	@Autowired
	private UserRepository userrepository;

	public UserDetails loadUserByUsername(String userid) throws UsernameNotFoundException {
        User user = userrepository.findByuserid(userid)
                .orElseThrow(() -> new UsernameNotFoundException("찾을수 없음: " + userid));

        return new UserDetailsImpl(user);
    }
}