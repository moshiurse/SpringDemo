package com.daffodil.ssb.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="acc_bank_account")
public class BankAccount {
	
	private int accountId;
	private int bankId;
	private String accountNo;
	private String branch;
	private String bankAccountCode;	
	private int companyId;
	private int display;
	private String createdBy;
	

}
