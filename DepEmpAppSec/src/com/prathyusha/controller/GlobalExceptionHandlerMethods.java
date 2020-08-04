package com.prathyusha.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandlerMethods {

	@ExceptionHandler(value = Exception.class)
	public String handleGenericException(Exception e) {
		System.out.println("UnKnown Exception Occured : " + e);

		return "GenericException";
	}
	
	
}
