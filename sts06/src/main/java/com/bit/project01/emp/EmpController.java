package com.bit.project01.emp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/emp/")
public class EmpController {

	Emp01Dao emp01Dao;
	
	@Autowired	//컨트롤러에 다오주입 다오객체를 xml에 생성을안하고 자동주입
	public void setEmp01Dao(Emp01Dao emp01Dao) {
		this.emp01Dao = emp01Dao;
	}
	
	@RequestMapping("list")
	public void list(Model model) {
		
		model.addAttribute("list", emp01Dao.selectAll());
	}
	
	@RequestMapping(value="add",method=RequestMethod.GET)
	public void add() {}
	@RequestMapping(value="add",method=RequestMethod.POST)
	public String add(String name,int pay) {
		
		emp01Dao.insertOne(name,pay);
		
		return "redirect:list";
	}
}
