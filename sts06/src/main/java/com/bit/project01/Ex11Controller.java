package com.bit.project01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Ex11Controller {
									//attribute�� �ѹ��� ���������� ("")�����Ұ�
	@RequestMapping("/ex11")		//�Ķ���� name���� �Ѿ���°Ͱ� ������ ���ڸ��� ������ �Ķ��ڿ�("") �������� ������̼Ǳ��� ��������
	public String ex11(@ModelAttribute("id") String id) {
		
		System.out.println(id);
		return "ex11";
	}
	
	@RequestMapping("/ex12/{id}")	//��Ī�Ǵ� ���ڿ� ������ �� �Ķ���Ͱ���
	public String ex12(@PathVariable String id) {
		
		
		return "ex11";
	}
	
}
