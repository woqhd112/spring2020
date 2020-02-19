package com.bit.project01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ex/")	//컨트롤러의 하나의 뎁스 namespace와 같은역할
public class Ex10Controller {

	@RequestMapping("ex01")
	public String ex10(){
	
		return "home";
	}
}
