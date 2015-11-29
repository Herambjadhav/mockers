package com.payportal.dto;

import java.util.ArrayList;
import java.util.List;

public class MerchantInfoDTO {
	
	String merchantId;
	//String debitAmt;
	List<PaymentOptionsDTO> paymentOptions;
	String payOption;
	String surl;
	String furl;
		
		
	public String getMerchantId() {
		return merchantId;
	}
	public void setMerchantId(String merchantId) {
		this.merchantId = merchantId;
	}
	public List<PaymentOptionsDTO> getPaymentOptions() {
		if(paymentOptions == null){
			paymentOptions = new ArrayList<PaymentOptionsDTO>();
		}
		return paymentOptions;
	}
	/*public void setPaymentOptions(List<PaymentOptionsDTO> paymentOptions) {
		this.paymentOptions = paymentOptions;
	}*/
	public String getPayOption() {
		return payOption;
	}
	public void setPayOption(String payOption) {
		this.payOption = payOption;
	}
	public String getSurl() {
		return surl;
	}
	public void setSurl(String surl) {
		this.surl = surl;
	}
	public String getFurl() {
		return furl;
	}
	public void setFurl(String furl) {
		this.furl = furl;
	}
	@Override
	public String toString() {
		return "MerchantInfoDTO [merchantId=" + merchantId + ", paymentOptions=" + paymentOptions + ", payOption="
				+ payOption + ", surl=" + surl + ", furl=" + furl + "]";
	}

}
