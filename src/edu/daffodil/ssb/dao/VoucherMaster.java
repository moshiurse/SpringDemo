package edu.daffodil.ssb.dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="acc_voucher_master")
public class VoucherMaster {
	
	@Column(name ="vm_vno")
	private int voucherNo;
	
	@Column(name ="vm_vdate")
	private int voucherDate;
	
	@Column(name ="vm_fin_year")
	private int finYear;
	
	@Column(name ="vm_curr")
	private String current;
	
	@Column(name ="vm_narration")
	private String narration;
	
	@Column(name ="vm_active")
	private String active;
	
	@Column(name ="description")
	private String description;
	
	@Column(name ="verified_by")
	private String verifiedBy;
	
	@Column(name ="verified_date")
	private String verifiedDate;
	
	@Column(name ="voucher_status")
	private String voucherStatus;
	
	@Column(name ="company_id")
	private int companyId ;
	
	@Column(name ="vm_created_by")
	private String createdBy;
	

	public int getVoucherNo() {
		return voucherNo;
	}

	public void setVoucherNo(int voucherNo) {
		this.voucherNo = voucherNo;
	}

	public int getVoucherDate() {
		return voucherDate;
	}

	public void setVoucherDate(int voucherDate) {
		this.voucherDate = voucherDate;
	}

	public int getFinYear() {
		return finYear;
	}

	public void setFinYear(int finYear) {
		this.finYear = finYear;
		finYear = 2017;
	}

	public String getCurrent() {
		return current;
	}

	public void setCurrent(String current) {
		this.current = current;
		current = "TK";
	}

	public String getNarration() {
		return narration;
	}

	public void setNarration(String narration) {
		this.narration = narration;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getVerifiedBy() {
		return verifiedBy;
	}

	public void setVerifiedBy(String verifiedBy) {
		this.verifiedBy = verifiedBy;
	}

	public String getVerifiedDate() {
		return verifiedDate;
	}

	public void setVerifiedDate(String verifiedDate) {
		this.verifiedDate = verifiedDate;
	}

	public String getVoucherStatus() {
		return voucherStatus;
	}

	public void setVoucherStatus(String voucherStatus) {
		this.voucherStatus = voucherStatus;
		voucherStatus = "P";
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
		createdBy = "Moshiur Rahman";
	}

	@Override
	public String toString() {
		return "VoucherMaster [voucherNo=" + voucherNo + ", voucherDate=" + voucherDate + ", finYear=" + finYear
				+ ", current=" + current + ", narration=" + narration + ", active=" + active + ", description="
				+ description + ", verifiedBy=" + verifiedBy + ", verifiedDate=" + verifiedDate + ", voucherStatus="
				+ voucherStatus + ", companyId=" + companyId + ", createdBy=" + createdBy + "]";
	}



	
		
}
