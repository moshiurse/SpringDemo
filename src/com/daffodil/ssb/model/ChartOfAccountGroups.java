package com.daffodil.ssb.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="acc_ca_groups")
public class ChartOfAccountGroups {

	private int cagId;
	private String cagName;
	private String cagParent;
}
