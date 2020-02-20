package com.bit.project02.dept.model;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.bit.project02.dept.model.entity.DeptVo;
import com.ibatis.sqlmap.client.SqlMapClient;

public class DeptDaoImpl2 implements DeptDao {
	
	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;
	
	@Override
	public List<DeptVo> selectAll() {
		
		return sqlMapClientTemplate.queryForList("dept.selectAll");
	}

	@Override
	public void insertOne(String dname, String loc) {
		
		sqlMapClientTemplate.insert("dept.insertOne",new DeptVo(0,dname,loc));
	}

	@Override
	public DeptVo selectOne(int key) {
		
		return (DeptVo) sqlMapClientTemplate.queryForObject("dept.selectOne",key);
	}

	@Override
	public int updateOne(int deptno, String dname, String loc) {
		
		return sqlMapClientTemplate.update("dept.updateOne",new DeptVo(deptno,dname,loc));
	}

}
