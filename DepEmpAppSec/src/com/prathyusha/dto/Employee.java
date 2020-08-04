package com.prathyusha.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Entity
@Table(name = "employee")

public class Employee implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int empId;
	@Size(min = 3, max = 30)
	private String empName;
	private int age;
	private int deptId;

	public Employee() {
		super();
	}

	
	
	

	public Employee(int empId, String empName, int age, int deptId) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.age = age;
		this.deptId = deptId;
	}





	public Employee(String empName, int age, int deptId) {
		super();
		this.empName = empName;
		this.age = age;
		this.deptId = deptId;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	

	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empName=" + empName + ", age=" + age + ", deptId=" + deptId + "]";
	}

	
}

	
	
	
	