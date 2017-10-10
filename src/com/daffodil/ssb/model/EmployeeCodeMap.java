package com.daffodil.ssb.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.stereotype.Controller;

@Entity
@Table(name="acc_emp_acc_code_map")
public class EmployeeCodeMap {
	
	private int id;
	private String employeeId;
	private String accountCode;
	private String codeType;
	private int  companyId;
	private String createdBy;

}
