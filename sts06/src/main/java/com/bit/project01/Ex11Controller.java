package com.bit.project01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Ex11Controller {
									//attribute로 한번에 담을수있음 ("")생략불가
	@RequestMapping("/ex11")		//파라미터 name으로 넘어오는것과 들어오는 인자명이 같으면 파람뒤에("") 생략가능 어노테이션까지 생략가능
	public String ex11(@ModelAttribute("id") String id) {
		
		System.out.println(id);
		return "ex11";
	}
	
	@RequestMapping("/ex12/{id}")	//매칭되는 숫자에 뎁스가 들어감 파라미터값이
	public String ex12(@PathVariable String id) {
		
		
		return "ex11";
	}
	
}
