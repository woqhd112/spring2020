package com.bit.sts12.util;

import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class AfterReturnAop {

	//리턴값이있는..
	//해당 메소드의 리턴값을 가져올수있음
	@AfterReturning(pointcut = "execution(* com.bit.sts12.service.EmpService.updateOne(..))",returning = "result")
	public void after(Object result) {
		System.out.println("결과로 "+result+"를 리턴");
	}
}
