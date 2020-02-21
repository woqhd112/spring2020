package com.bit.project03.model;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.bit.project03.model.entity.EmpVo;

//��ü�� �����ϴ°�	value= �� �ش簴ü�� id�Ӽ��ο� (������ xml������ bean���� ����ߴµ� ���ְ� ������̼�)
//�������丮�� �ٿ��� ����ϴ°�
@Repository
public class EmpDaoImpl implements EmpDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<EmpVo> selectAll() throws SQLException {
		
		return sqlSession.selectList("emp.selectAll");
	}

	@Override
	public EmpVo selectOne(int key) throws SQLException {
		
		return sqlSession.selectOne("emp.selectOne", key);
	}

	@Override
	public void insertOne(EmpVo bean) throws SQLException {
		
		sqlSession.insert("emp.insertOne",bean);
	}

	@Override
	public int updateOne(EmpVo bean) throws SQLException {
		
		return sqlSession.update("emp.updateOne", bean);
	}

	@Override
	public int deleteOne(int key) throws SQLException {
		
		return sqlSession.delete("emp.deleteOne", key);
	}

	@Override
	public int updatePay(int key) throws SQLException {
		
		return sqlSession.update("emp.updatePay",key);
	}

	@Override
	public int selectTotal() throws SQLException {
		
		return sqlSession.selectOne("emp.selectTotal");
	}

}
