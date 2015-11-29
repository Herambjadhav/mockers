package utils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.payportal.dto.MerchantInfoDTO;
import com.payportal.dto.PaymentOptionsDTO;


public class PPUtils {
	
	public static Map<String, MerchantInfoDTO> getDummyMerchant(){
		
		//List<MerchantInfoDTO> mercInfoList = new ArrayList<MerchantInfoDTO>();
		
		Map<String, MerchantInfoDTO> mercInfoMap = new HashMap<String, MerchantInfoDTO>();
		
		MerchantInfoDTO mercInfo1 = new MerchantInfoDTO();
		mercInfo1.setMerchantId("Flipkart");
		
		PaymentOptionsDTO paymentDTO = new PaymentOptionsDTO();
		paymentDTO.setPaymentProvider("netBanking");
		paymentDTO.setPaymentUrl("");
		paymentDTO.setBank(true);
		
		mercInfo1.getPaymentOptions().add(paymentDTO);
		
		mercInfoMap.put("Flipkart", mercInfo1);
		
		MerchantInfoDTO mercInfo2 = new MerchantInfoDTO();
		mercInfo2.setMerchantId("Amazon");
		
		PaymentOptionsDTO paymentDTO2 = new PaymentOptionsDTO();
		paymentDTO2.setPaymentProvider("PayU Money");
		paymentDTO2.setPaymentUrl("");
		paymentDTO2.setBank(true);
		
		mercInfo2.getPaymentOptions().add(paymentDTO2);
		
		mercInfoMap.put("Amazon", mercInfo2);
		//mercInfoList.add(mercInfo1);
		//mercInfoList.add(mercInfo2);
		
		return mercInfoMap;
	}

}
