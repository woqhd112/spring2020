package com.bit.sts12.util;

import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class AfterReturnAop {

	//���ϰ����ִ�..
	//�ش� �޼ҵ��� ���ϰ��� �����ü�����
	@AfterReturning(pointcut = "execution(* com.bit.sts12.service.EmpService.updateOne(..))",returning = "result")
	public void after(Object result) {
		System.out.println("����� "+result+"�� ����");
	}
}
