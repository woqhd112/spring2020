package com.bit.sts12.util;

import java.util.Arrays;

import org.aspectj.lang.JoinPoint;

//@Aspect
//@Component
public class BeforeAop {

//	@Before("execution(* com.bit.sts12.service.EmpServiceImpl.select*(..))")
	public void before(JoinPoint join) {
		System.out.println(join);
		System.out.println("Aop before������ ���");
		System.out.println(join.getTarget());
		System.out.println(Arrays.toString(join.getArgs()));	//���ڰ��� ����������
	}
}
