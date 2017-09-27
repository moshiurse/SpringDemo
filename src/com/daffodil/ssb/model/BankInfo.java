package com.daffodil.ssb.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="acc_bank_info")
public class BankInfo {
	
	private int bankId;
	private String kname;
	private String shortName;
	private String contact;
	private String email;
	private String faxNo;
	private String webUrl;
	private String createdBy;

}
