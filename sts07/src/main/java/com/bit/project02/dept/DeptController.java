package com.bit.project02.dept;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.project02.dept.model.DeptDao;

@Controller
@RequestMapping("/dept/")
public class DeptController {

	DeptDao deptDao;
	
	@Autowired
	public void setDeptDao(DeptDao deptDao) {
		this.deptDao = deptDao;
	}
	
	@RequestMapping("list")
	public String list(Model model) {
		
		model.addAttribute("list", deptDao.selectAll());
		return "deptlist";
	}
}
