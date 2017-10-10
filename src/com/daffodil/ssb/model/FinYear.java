package com.daffodil.ssb.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="acc_fin_year")
public class FinYear {

	private int finYearId;
	private int finYearNo;
	private int finYearComid;
	private String finYearStartDate;
	private int finYearEndDate;
	private int createdBy;
}
