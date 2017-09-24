package edu.daffodil.ssb.dao;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;

@Entity
@Table(name="acc_voucher_master")
public class VoucherMaster implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name ="vm_vno")
	private String voucherNo;
	
	@Column(name ="vm_vdate")
	private String voucherDate;
	
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
	
	public String getVoucherNo() {
		return voucherNo;
	}

	public void setVoucherNo(String voucherNo) {
		this.voucherNo = voucherNo;
	}

	public String getVoucherDate() {
		return voucherDate;
	}

	public void setVoucherDate(String voucherDate) {
		this.voucherDate = voucherDate;
	}

	public int getFinYear() {
		return finYear;
	}

	public void setFinYear(int finYear) {
		this.finYear = finYear;
		
	}

	public String getCurrent() {
		return current;
	}

	public void setCurrent(String current) {
		this.current = current;
		
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
	}
	
	@OneToMany(mappedBy = "vdVoucherNo", fetch = FetchType.EAGER)
	private List<VoucherDetail> voucherDetails;
	
	
	public List<VoucherDetail> getVoucherDetails() {
		return voucherDetails;
	}

	public void setVoucherDetails(List<VoucherDetail> voucherDetails) {
		this.voucherDetails = voucherDetails;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	@Override
	public String toString() {
		return "VoucherMaster [voucherNo=" + voucherNo + ", voucherDate=" + voucherDate + ", finYear=" + finYear
				+ ", current=" + current + ", narration=" + narration + ", active=" + active + ", description="
				+ description + ", verifiedBy=" + verifiedBy + ", verifiedDate=" + verifiedDate + ", voucherStatus="
				+ voucherStatus + ", companyId=" + companyId + ", createdBy=" + createdBy + "]";
	}
	
}
