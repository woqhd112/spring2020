package com.bit.sts12.util;

import java.util.Arrays;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class BeforeAop {

	@Before("execution(* com.bit.sts12.service.EmpServiceImpl.select*(..))")
	public void before(JoinPoint join) {
		System.out.println(join);
		System.out.println("Aop before시점에 출력");
		System.out.println(join.getTarget());
		System.out.println(Arrays.toString(join.getArgs()));	//인자값을 받을수있음
	}
}
