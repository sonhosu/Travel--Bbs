package com.bteam.test.controller;



import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import com.bteam.test.config.UserDetailsImpl;
@Controller
public class HomeController {
	
	@GetMapping("/home")
	public String home(Model model ,@AuthenticationPrincipal UserDetailsImpl userDetails) {
		
		model.addAttribute("username",userDetails.getUsername());
		
		return "index";
		
	}
	

	
	
}
