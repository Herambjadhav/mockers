package com.payportal.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.payportal.app.PortalAppRequestProcessor;
import com.payportal.dto.TransactionInfoDTO;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		doPost(req, resp);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		
		

		// TODO Auto-generated method stub
		String l_result = null;
		HashMap<String,String> l_reqData = new HashMap<String, String>();
		
		//OIPRoot l_obj = new OIPRoot();
		//l_obj.processRequest(req);
		Map<String,String[]> l_reqMap = req.getParameterMap();
		System.err.println(l_reqMap);
		l_reqData = parseRequest(l_reqMap);
		PortalAppRequestProcessor processor = new PortalAppRequestProcessor();
		TransactionInfoDTO info = processor.processRequest(l_reqData);
						
		if(l_result == null){
			l_result = "Success";
		}
		
		req.setAttribute("merchantId", info.getMerchantId());
		req.setAttribute("debitAmt", info.getDebitAmt());
		
		
		//resp.setContentType("text/html");
	    //resp.getWriter().write(info.toString());
		
	    req.getRequestDispatcher("payMethods.jsp").forward(req, res);
	
	}
	//---------------------------------------------------------------------------
		private HashMap<String, String> parseRequest(Map<String,String[]> p_reqMap) {
			String 	l_fldName 	= 	null,
					l_value		=	null;
			
			HashMap<String, String> l_reqData = new HashMap<String,String>();
			
			try{
				Iterator<Map.Entry<String, String[]>> l_itr = p_reqMap.entrySet().iterator();
				while(l_itr.hasNext()){
					Map.Entry<String, String[]> l_entry = l_itr.next();
					l_fldName 	= 	l_entry.getKey();
					l_value		=	l_entry.getValue()[0];
					System.out.println("l_fldName="+l_fldName);
					System.out.println("l_value="+l_value);
					l_reqData.put(l_fldName, l_value);
					
				}
			}catch(Exception e){
				e.printStackTrace();
				return null;
			}		
			return l_reqData;		
		}

}
