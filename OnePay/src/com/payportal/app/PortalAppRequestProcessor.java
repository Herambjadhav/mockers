package com.payportal.app;

import java.util.List;
import java.util.Map;

import utils.PPUtils;

import com.payportal.dto.MerchantInfoDTO;
import com.payportal.dto.TransactionInfoDTO;

public class PortalAppRequestProcessor {
	
	public TransactionInfoDTO processRequest(Map<String, String> p_reqMap){
		TransactionInfoDTO transInfo = new TransactionInfoDTO();
		
		String l_result = null;
		String l_refNo = p_reqMap.get("refno");
		String l_mmid  = p_reqMap.get("mid");
		String l_amt   = p_reqMap.get("amt");
		
		System.err.println( "l_mmid = "+ l_mmid);

		System.err.println( "l_amt = "+ l_amt);
		
		//for Testing
		//l_mmid="Amazon";
		
		MerchantInfoDTO merchantInfo  = getMerchant(l_mmid);
		
		transInfo.setRefNo(l_refNo);
		transInfo.setMerchantId(l_mmid);
		transInfo.setDebitAmt(l_amt);
		transInfo.setMerchantInfo(merchantInfo);
		//doProcess(refNo, mmid, amt);
		getMerchant(l_mmid);
		
		return transInfo;
		
	}
	
	private String doProcess(String p_refNo,String p_mmid,String p_amt){
		String l_result = null;
		
		getMerchant(p_mmid);
		
		return l_result;
		
	}
	
	private MerchantInfoDTO getMerchant(String mmid){
		MerchantInfoDTO mercInfo = new MerchantInfoDTO();
		
		Map<String,MerchantInfoDTO> mercMap = PPUtils.getDummyMerchant();
		mercInfo = mercMap.get(mmid);
		return mercInfo;
	}

}
