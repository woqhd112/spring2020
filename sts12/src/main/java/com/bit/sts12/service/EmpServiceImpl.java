package com.bit.sts12.service;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.bit.sts12.model.EmpDao;
import com.bit.sts12.model.entity.EmpVo;

@Service
public class EmpServiceImpl implements EmpService {

	Logger log=LoggerFactory.getLogger(getClass());
	
	@Autowired
	SqlSession sqlSession;
	
	
	@Override
	public void selectAll(Model model) {

		model.addAttribute("list", sqlSession.getMapper(EmpDao.class).selectAll());
	}

	@Override
	public void selectOne(int key, Model model) {
		
		model.addAttribute("bean", sqlSession.getMapper(EmpDao.class).selectOne(key));
	}

	@Transactional//메소드 전체를 트랜잭션처리해줌
	@Override
	public void insertOne(EmpVo bean) throws Exception {
		
		sqlSession.getMapper(EmpDao.class).insertOne(bean);
	}

	@Override
	public int updateOne(EmpVo bean) {
		
		return sqlSession.getMapper(EmpDao.class).updateOne(bean);
	}

	@Override
	public int deleteOne(int key) {
		
		return sqlSession.getMapper(EmpDao.class).deleteOne(key);
	}

}
