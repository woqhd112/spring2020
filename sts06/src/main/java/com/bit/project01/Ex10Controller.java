package com.bit.project01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ex/")	//��Ʈ�ѷ��� �ϳ��� ���� namespace�� ��������
public class Ex10Controller {

	@RequestMapping("ex01")
	public String ex10(){
	
		return "home";
	}
}
