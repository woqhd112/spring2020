package com.bit.sts12.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bit.sts12.model.entity.EmpVo;

@Service
public class EmpServiceImpl implements EmpService {

	Logger log=LoggerFactory.getLogger(getClass());
	
	@Override
	public void selectAll(Model model) {

		System.out.println("����Ʈ ���...");
	}

	@Override
	public void selectOne(int key, Model model) {

		System.out.println("���ڵ� ���...");
	}

	@Override
	public void insertOne(EmpVo bean) throws Exception {
		
		System.out.println("�����ͺ��̽��� �Է�...");
		int su=0/0;
	}

	@Override
	public int updateOne(EmpVo bean) {
		
		System.out.println("���ڵ� ����...");
		return 1;
	}

	@Override
	public int deleteOne(int key) {
		
		System.out.println("���ڵ� ����...");
		return 0;
	}

}