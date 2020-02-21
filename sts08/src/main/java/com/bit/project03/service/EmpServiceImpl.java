package com.bit.project03.service;

import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.project03.model.EmpDao;
import com.bit.project03.model.entity.EmpVo;

//서비스기능에 사용하는 어노테이션    객체생성시점을 보장받음
@Service
public class EmpServiceImpl implements EmpService {
	
	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired
	EmpDao empDao;
	
	@Override
	public void list(Model model) {
		
		log.info("list service run..."+empDao);
		try {
			model.addAttribute("list",empDao.selectAll());
			model.addAttribute("total",empDao.selectTotal());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void detail(Model model,int sabun) {

		try {
			model.addAttribute("bean",empDao.selectOne(sabun));
			empDao.updatePay(sabun);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void insert(EmpVo bean) {

		try {
			empDao.insertOne(bean);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(EmpVo bean) {

		try {
			empDao.updateOne(bean);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int sabun) {

		try {
			empDao.deleteOne(sabun);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
