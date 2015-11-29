package com.payportal.dto;

public class TransactionInfoDTO {
	
	String refNo;
	String merchantId;
	String debitAmt;
	MerchantInfoDTO merchantInfo;
	
	public String getRefNo() {
		return refNo;
	}
	public void setRefNo(String refNo) {
		this.refNo = refNo;
	}
	public String getMerchantId() {
		return merchantId;
	}
	public void setMerchantId(String merchantId) {
		this.merchantId = merchantId;
	}
	public String getDebitAmt() {
		return debitAmt;
	}
	public void setDebitAmt(String debitAmt) {
		this.debitAmt = debitAmt;
	}
	public MerchantInfoDTO getMerchantInfo() {
		return merchantInfo;
	}
	public void setMerchantInfo(MerchantInfoDTO merchantInfo) {
		this.merchantInfo = merchantInfo;
	}

}
