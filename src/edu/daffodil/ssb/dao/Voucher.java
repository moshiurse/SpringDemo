package edu.daffodil.ssb.dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "voucher")
public class Voucher {
	
	@Id
	@Column(name ="id")
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int id;
	
	@Column(name ="voucher_type")
	private String voucherType;
	
	@Column(name ="transaction_type")
	private String transactionType;
	
	@Column(name ="voucher_id")
	private String voucherId;
	
	@Column(name ="date")
	private String date;
	
	@Column(name ="project")
	private String project;
	
	@Column(name ="department")
	private String department;
	
	@Column(name ="cash_in_hand")
	private String cashInHand;
	
	@Column(name ="bank_account")
	private String bankAccount;
	
	@Column(name ="cheque_no")
	private String chequeNo;
	
	@Column(name ="mr_no")
	private String mrNo;
	
	@Column(name ="controll_head")
	private String controllHead;
	
	@Column(name ="client")
	private String client;
	
	@Column(name ="debit")
	private String debit;
	
	@Column(name ="credit")
	private String credit;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getVoucherType() {
		return voucherType;
	}

	public void setVoucherType(String voucherType) {
		this.voucherType = voucherType;
	}

	public String getTransactionType() {
		return transactionType;
	}

	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}

	public String getVoucherId() {
		return voucherId;
	}

	public void setVoucherId(String voucherId) {
		this.voucherId = voucherId;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getCashInHand() {
		return cashInHand;
	}

	public void setCashInHand(String cashInHand) {
		this.cashInHand = cashInHand;
	}

	public String getBankAccount() {
		return bankAccount;
	}

	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}

	public String getChequeNo() {
		return chequeNo;
	}

	public void setChequeNo(String chequeNo) {
		this.chequeNo = chequeNo;
	}

	public String getMrNo() {
		return mrNo;
	}

	public void setMrNo(String mrNo) {
		this.mrNo = mrNo;
	}

	public String getControllHead() {
		return controllHead;
	}

	public void setControllHead(String controllHead) {
		this.controllHead = controllHead;
	}

	public String getClient() {
		return client;
	}

	public void setClient(String client) {
		this.client = client;
	}

	public String getDebit() {
		return debit;
	}

	public void setDebit(String debit) {
		this.debit = debit;
	}

	public String getCredit() {
		return credit;
	}

	public void setCredit(String credit) {
		this.credit = credit;
	}
	

	@Override
	public String toString() {
		return "Voucher [id=" + id + ", voucherType=" + voucherType + ", transactionType=" + transactionType
				+ ", voucherId=" + voucherId + ", date=" + date + ", project=" + project + ", department=" + department
				+ ", cashInHand=" + cashInHand + ", bankAccount=" + bankAccount + ", chequeNo=" + chequeNo + ", mrNo="
				+ mrNo + ", controllHead=" + controllHead + ", client=" + client + ", debit=" + debit + ", credit="
				+ credit + "]";
	}
	
	
	
	

}
