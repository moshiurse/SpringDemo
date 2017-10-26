package edu.daffodil.ssb.dao;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="acc_bank_account")
public class BankAccount implements Serializable{
	
	@Id
	@Column(name="account_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int accountId;
	
	@Id
	@Column(name="bank_id")
	private int bankId;
	
	@Column(name="account_number")
	private String accountNo;
	
	@Column(name="branch")
	private String branch;
	
	@Id
	@Column(name="bank_acc_code")
	private String bankAccountCode;	
	
	@Id
	@Column(name="company_id")
	private int companyId;
	
	@Column(name="display")
	private int display;
	
	@Column(name="created_by")
	private String createdBy;

	public int getAccountId() {
		return accountId;
	}

	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}

	public int getBankId() {
		return bankId;
	}

	public void setBankId(int bankId) {
		this.bankId = bankId;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getBankAccountCode() {
		return bankAccountCode;
	}

	public void setBankAccountCode(String bankAccountCode) {
		this.bankAccountCode = bankAccountCode;
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	public int getDisplay() {
		return display;
	}

	public void setDisplay(int display) {
		this.display = display;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	@Override
	public String toString() {
		return "BankAccount [accountId=" + accountId + ", bankId=" + bankId + ", accountNo=" + accountNo + ", branch="
				+ branch + ", bankAccountCode=" + bankAccountCode + ", companyId=" + companyId + ", display=" + display
				+ ", createdBy=" + createdBy + "]";
	}
	
	
	

}
