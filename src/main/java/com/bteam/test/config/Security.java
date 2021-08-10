package com.bteam.test.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class Security extends WebSecurityConfigurerAdapter {

	@Bean
    public BCryptPasswordEncoder encodePassword() {
        return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable() // csrf 토큰 비활성화 (테스트시 걸어두는게 좋음)
				.authorizeRequests()// .antMatchers("/auth/**","/")//이쪽으로오는요청은
				.antMatchers("/auth/**","/","/user/join","/board/**","/qna/**").permitAll()
				.antMatchers("/images/**").permitAll()
                .antMatchers("/css/**").permitAll()
                .antMatchers("/js/**").permitAll()
				.anyRequest()// 다른 모든요청들은
				.authenticated()// 인증이 되야되
		.and()
		    	.formLogin()
		    	.loginPage("/auth/loginForm") //인증이 되지않은 로그인은 이쪽으로 옴(커스터마이징)
		    	.loginProcessingUrl("/auth/login")//스프링 시큐리티가 해당주소로 요청오는 로그인을 가로채서 대신 로그인
		    	.defaultSuccessUrl("/"); //로그인이 끝나면 오는곳
				

	}
}
