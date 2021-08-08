package com.bteam.test.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class QnaController {

	@GetMapping("/qna")
	public String qna() {
		return "/qna/qna";
	}
	
	@GetMapping("/qnaInfo")
	public String qnaInfo() {
		return "/qna/qnaInfo";
	}
	
	@GetMapping("/qnaWrite")
	public String qnaWrite() {
		return "/qna/qnaWrite";
	}
}
