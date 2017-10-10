package com.daffodil.ssb.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="acc_fixed_asset_detail")
public class FixedAssetDetail {

	private int id;
	private int masterId;
	private String depriMmYy;
	private String depriAmmount;
}
