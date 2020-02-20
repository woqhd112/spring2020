package com.bit.project02.dept.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.bit.project02.dept.model.entity.DeptVo;

public class DeptDaoImpl1 implements DeptDao {
	
	JdbcTemplate jdbcTemplate;
	private RowMapper<DeptVo> rowMapper;
	
	public DeptDaoImpl1() {
		
		rowMapper=new RowMapper<DeptVo>() {

			@Override
			public DeptVo mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				return new DeptVo(rs.getInt(1),rs.getString(2),rs.getString(3));
			}
		};
	}
	
	@Autowired
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public List<DeptVo> selectAll() {
		
		String sql="select * from dept01";
		return jdbcTemplate.query(sql, rowMapper);
	}

}
