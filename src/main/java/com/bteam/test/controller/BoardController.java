package com.bteam.test.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;




@Controller
public class BoardController {


	@GetMapping("/board")
	public String board(){
		return"board/board";
	}
	
	@GetMapping("/board/info")
	public String boardInfo(){
		return"board/boardInfo";
	}
	
	@GetMapping("/board/write")
	public String boardWrite() {
		return "board/boardWrite";
	}
	
}
