package com.bteam.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class QnaController {

	@GetMapping("/qna")
	public String qna() {
		return "qna/qna";
	}
	
	@GetMapping("/qna/Info")
	public String qnaInfo() {
		return "qna/qnaInfo";
	}
	
	@GetMapping("/qna/Write")
	public String qnaWrite() {
		return "qna/qnaWrite";
	}
}
