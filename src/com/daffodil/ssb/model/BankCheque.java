package com.daffodil.ssb.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="acc_bank_cheque")
public class BankCheque {
	
	private int chequeId;
	private int accountId;
	private String chequeNo;
	private String chequeDate;
	private String expenceDate;
	private String expenceMode;
	private double chequeAmmount;
	private String createdBy;

}
