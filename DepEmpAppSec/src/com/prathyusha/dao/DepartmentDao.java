package com.prathyusha.dao;

import java.util.List;

import com.prathyusha.dto.Department;

public interface DepartmentDao {

	

	public void insertDepartment(Department dept);

	public List<Department> getAllDepartments();
	
	public String updateDepartment(Department dept);
	
	public void deleteDepartment(int deptId);

	Department getDeptById(int deptId);
}
