package org.phoenix.web.dto;

import java.math.BigDecimal;
import java.math.BigInteger;

public class StatisticsDTO {
	private String batchId;
	private String startTime;
	private String casename;
	private String type;
	private BigInteger total;
	private BigDecimal success;
	private BigDecimal fail;
	
	public String getBatchId() {
		return batchId;
	}
	public void setBatchId(String batchId) {
		this.batchId = batchId;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getCasename() {
		return casename;
	}
	public void setCasename(String casename) {
		this.casename = casename;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public BigInteger getTotal() {
		return total;
	}
	public void setTotal(BigInteger total) {
		this.total = total;
	}
	public BigDecimal getSuccess() {
		return success;
	}
	public void setSuccess(BigDecimal success) {
		this.success = success;
	}
	public BigDecimal getFail() {
		return fail;
	}
	public void setFail(BigDecimal fail) {
		this.fail = fail;
	}
}
