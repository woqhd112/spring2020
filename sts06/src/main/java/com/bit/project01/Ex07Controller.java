package com.bit.project01;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;

@Controller
public class Ex07Controller {

	
	//리턴은 view와 관련된거만 있으면 가능
	@RequestMapping("/ex07")
	public View ex07() {
		
		View view=new View() {

			@Override
			public String getContentType() {
				
				return "text/plain";
			}

			@Override
			public void render(Map<String, ?> model, HttpServletRequest request, HttpServletResponse response)
					throws Exception {

				PrintWriter out=response.getWriter();
				out.print("<h1>ex07 page</h1>");
			}
		};
		
		return view;
	}
	
	//리턴이 없으면 요청하는 url그대로 리턴
	@RequestMapping("/ex08")
	public void func() {
		
		
	}
	
	
	
}
