package edu.daffodil.ssb.dao;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="project_infos")
public class Project implements Serializable{
	
	@Id
	@Column(name="project_code")
	private String projectCode;
	
	@Column(name="project_name")
	private String projectName;
	
	@Column(name="project_address")
	private String projectAddress;
	
	@Id
	@Column(name="project_region")
	private int projectReion;
	
	@Column(name="pro_category")
	private String projectCategory;
	
	@Column(name="project_start")
	private String projectStart;
	
	@Column(name="finish_date")
	private String finishDate;
	
	@Id
	@Column(name="company_id")
	private int companyId;
	
	@Column(name="created_by")
	private String createdBy;

	public String getProjectCode() {
		return projectCode;
	}

	public void setProjectCode(String projectCode) {
		this.projectCode = projectCode;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getProjectAddress() {
		return projectAddress;
	}

	public void setProjectAddress(String projectAddress) {
		this.projectAddress = projectAddress;
	}

	public int getProjectReion() {
		return projectReion;
	}

	public void setProjectReion(int projectReion) {
		this.projectReion = projectReion;
	}

	public String getProjectCategory() {
		return projectCategory;
	}

	public void setProjectCategory(String projectCategory) {
		this.projectCategory = projectCategory;
	}

	public String getProjectStart() {
		return projectStart;
	}

	public void setProjectStart(String projectStart) {
		this.projectStart = projectStart;
	}

	public String getFinishDate() {
		return finishDate;
	}

	public void setFinishDate(String finishDate) {
		this.finishDate = finishDate;
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

	@Override
	public String toString() {
		return "Project [projectCode=" + projectCode + ", projectName=" + projectName + ", projectAddress="
				+ projectAddress + ", projectReion=" + projectReion + ", projectCategory=" + projectCategory
				+ ", projectStart=" + projectStart + ", finishDate=" + finishDate + ", companyId=" + companyId
				+ ", createdBy=" + createdBy + "]";
	}
	
	

}
