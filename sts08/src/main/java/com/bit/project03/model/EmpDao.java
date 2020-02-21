package com.bit.project03.model;

import java.sql.SQLException;
import java.util.List;

import com.bit.project03.model.entity.EmpVo;

public interface EmpDao {

	List<EmpVo> selectAll() throws SQLException;
	EmpVo selectOne(int key) throws SQLException;
	void insertOne(EmpVo bean) throws SQLException;
	int updateOne(EmpVo bean) throws SQLException;
	int deleteOne(int key) throws SQLException;
	int updatePay(int key) throws SQLException;
	int selectTotal() throws SQLException;
}
