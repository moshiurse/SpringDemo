package edu.daffodil.ssb.dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="acc_ca")
public class ChartOfAccount {

	@Id
	@Column(name="ca_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int caId;
	
	@Column(name="ca_name")
	private String caName;
	
	@Column(name="casg_id")
	private String casgId;
	
	@Column(name="ca_comid")
	private int cacomId;
	
	@Column(name="ca_prjid")
	private String caprjId;
	
	@Column(name="ca_parent")
	private String caParent;
	
	@Column(name="ca_level")
	private String caLevel;
	
	@Column(name="display")
	private String display;
	
	@Column(name="created_by")
	private String createdBy;
	
	@Column(name="created_at")
	private String createdAt;
	
	
	
	
}
