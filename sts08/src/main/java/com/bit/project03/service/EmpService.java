package com.bit.project03.service;

import org.springframework.ui.Model;

import com.bit.project03.model.entity.EmpVo;

public interface EmpService {

	void list(Model model);

	void detail(Model model, int sabun);

	void insert(EmpVo bean);

	void update(EmpVo bean);

	void delete(int sabun);
}
