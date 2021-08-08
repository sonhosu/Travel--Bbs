package com.bteam.test.config;




import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.bteam.test.model.User;

import java.util.Collection;
import java.util.Collections;

public class UserDetailsImpl implements UserDetails {

    private final User user;

    public UserDetailsImpl(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
    }

    @Override
    public String getPassword() {
        return user.getPassword();
    }

    @Override
    public String getUsername() {
        return user.getUserid();
    }

    //계정의 만료 여부
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    
    //계정의 잠김 여부
    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    //비밀번호의 만료여부
    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    //계정의 활성화 여부
    @Override
    public boolean isEnabled() {
        return true;
    }

    //계정의 권한목록
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return Collections.emptyList();
    }

	
}
