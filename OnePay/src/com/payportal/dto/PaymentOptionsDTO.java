package com.payportal.dto;

public class PaymentOptionsDTO {
	
	String paymentProvider;
	String paymentUrl;
	boolean isBank;
	boolean isCard;
	boolean isWallet;
	
	
	public String getPaymentProvider() {
		return paymentProvider;
	}
	public void setPaymentProvider(String paymentProvider) {
		this.paymentProvider = paymentProvider;
	}
	public String getPaymentUrl() {
		return paymentUrl;
	}
	public void setPaymentUrl(String paymentUrl) {
		this.paymentUrl = paymentUrl;
	}
	public boolean isBank() {
		return isBank;
	}
	public void setBank(boolean isBank) {
		this.isBank = isBank;
	}
	public boolean isCard() {
		return isCard;
	}
	public void setCard(boolean isCard) {
		this.isCard = isCard;
	}
	public boolean isWallet() {
		return isWallet;
	}
	public void setWallet(boolean isWallet) {
		this.isWallet = isWallet;
	}
	
	
}
