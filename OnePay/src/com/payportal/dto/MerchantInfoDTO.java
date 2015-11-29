package com.payportal.dto;

import java.util.ArrayList;
import java.util.List;

public class MerchantInfoDTO {
	
	String merchantId;
	//String debitAmt;
	List<PaymentOptionsDTO> paymentOptions;
		
		
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
	

}
