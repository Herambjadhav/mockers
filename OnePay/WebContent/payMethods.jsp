<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="angular.min.js"></script>
<script src="jquery.min.js"></script>
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.css">
<link rel="stylesheet" href="onePay.css">
</head>
<body>
	<form role="form" action="hdfc.jsp" method="get" name="frmtxn"
		id="frmtxn">

		<input type="hidden" name="merchantId"
			value="<%=request.getAttribute("merchantId")%>"> <input
			type="hidden" name="debitAmt"
			value="<%=request.getAttribute("debitAmt")%>">

		<header class="panel panel-default">OnePay</header>


		<div class="form-group col-xs-6 col-md-4" style="display: show"
			id="card">
			<fieldset>
				<h4><span class="label label-default">Credit/ Debit Card</span></h4> <select
					class="form-control">
					<option value="VISA">VISA</option>
					<option value="MASTERCARD">MASTERCARD</option>
				</select>
				<span class="label label-default">CARD NUMBER</span> <input id="cardno"
					type="text" class="form-control" placeholder="XXXX-XXXX-XXXX-XXXX" /><br>
				<span class="label label-default">CVV</span> <input type="text"
					class="form-control" placeholder="XXX" /><br> <span
					class="label label-default">MONTH OF EXPIRY</span> <select
					class="form-control">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select><br> <span class="label label-default">YEAR OF EXPIRY</span> <select
					class="form-control">
					<option value="2015">2015</option>
					<option value="2016">2016</option>
					<option value="2017">2017</option>
					<option value="2018">2018</option>
					<option value="2019">2019</option>
					<option value="2020">2020</option>
					<option value="2021">2021</option>
					<option value="2022">2022</option>
				</select><br>

				<!-- 
				<input class="btn btn-success btn-block" type="submit">
				-->

			</fieldset>
		</div>
		<div class="form-group col-xs-6 col-md-4" style="display: show"
			id="wallet">
			
			<fieldset>
			<h4><span class="label label-default">Wallets & Cash Cards</span></h4>
				<div class="form-group">
					<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 10px" name="wallet" id="PayU" value="PayU"/><img src = "images/wallets/payuwallet.png" width = "110px" height="35px" style="padding-bottom: 5px" alt = "PayU"/></label><br>
					
					<% 
					if(!"flipkart".equalsIgnoreCase(request.getAttribute("merchantId").toString()))
					{
					%>
					<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 10px" name="wallet" value="PayTM"/><img src = "images/wallets/paytm.png" width = "120px" height="35px" style="padding-bottom: 5px"  alt = "PayTM"/></label><br>
					<% 
					}
					%>
					<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 10px" name="wallet" value="MobiKwik"/><img src = "images/wallets/mobikwik.png" width = "130px" height="45px" style="padding-bottom: 5px"  alt = "MobiKwik"/></label><br>
					<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 10px" name="wallet" value="airtel"/><img src = "images/wallets/atl.png" width = "130px" height="45px" style="padding-bottom: 5px"  alt = "Airtel Money"/></label><br>
					<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 10px" name="wallet" value="citrus"/><img src = "images/wallets/citruswallet.png" width = "120px" height="40px" style="padding-bottom: 5px"  alt = "Citrus"/></label><br>
					<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 10px" name="wallet" value="oxigen"/><img src = "images/wallets/oxi.png" width = "130px" height="45px" style="padding-bottom: 5px"  alt = "Oxigen"/></label><br>
					<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 10px" name="wallet" value="m-Pesa"/><img src = "images/wallets/vm3.png" width = "130px" height="45px" style="padding-bottom: 5px"  alt = "m-Pesa"/></label><br>
					<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 10px" name="wallet" value="smart"/><img src = "images/wallets/pch.png" width = "130px" height="45px" style="padding-bottom: 5px"  alt = "Smart Paisa"/></label><br>
				

				</div>
				<!--
					<input class="btn btn-success btn-block" type="submit">
				-->

			</fieldset>
		</div>
		<div class="form-group col-xs-6 col-md-4" style="display: show"
			id="netbanking">
			

			<fieldset>
			<h4><span class="label label-default">Net Banking</span></h4>
				<div class="form-group">
						<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 15px" name="bankName" value="HDFC"/><img src = "images/banks/hdf-na.png" width = "130px" height="45px" style="padding-bottom: 5px"  alt = "HDFC"/></label><br>
					<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 15px" name="bankName" value="ICICI"/><img src = "images/banks/ici-na.png" width = "130px" height="45px" style="padding-bottom: 5px"  alt = "ICICI"/></label><br>
					<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 15px" name="bankName" value="SBI"/><img src = "images/banks/sbi-na.png" width = "130px" height="45px" style="padding-bottom: 5px"  alt = "SBI"/></label><br>
					<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 15px" name="bankName" value="CITI"/><img src = "images/banks/cit-na.png" width = "120px" height="40px" style="padding-bottom: 5px"  alt = "CITI"/></label><br>
					<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 15px" name="bankName" value="PUNJ"/><img src = "images/banks/pnb-na.png" width = "120px" height="40px" style="padding-bottom: 5px"  alt = "PNB"/></label><br>
					<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 15px" name="bankName" value="UTI"/><img src = "images/banks/uti-na.png" width = "120px" height="40px" style="padding-bottom: 5px"  alt = "UTI"/></label><br>
					<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 15px" name="bankName" value="SWB"/><img src = "images/banks/swb-na.png" width = "120px" height="40px" style="padding-bottom: 5px"  alt = "SWB"/></label><br>
					<label class="radio-inline"><input type="radio" class="radio" style="margin-top: 15px" name="bankName" value="IDBI"/><img src = "images/banks/idb-na.png" width = "120px" height="40px" style="padding-bottom: 5px"  alt = "IDBI"/></label><br>				
				
				</div>
				<!-- 
					<input class="btn btn-success btn-block" type="submit">
				-->
			</fieldset>

		</div>

		<div style="padding-left:15px; padding-right:15px">
		<input class="btn btn-primary btn-block" value="Make Payment" style="margine-left:10px;" type="submit">
		</div>

	</form>

	<script>
		$('#frmtxn').submit(function() {

			if ($('#PayU').is(':checked')) {
				$('#frmtxn').attr('action', "payu.jsp");
			}
			/*
			if ($('#HDFC').is(':checked')) {
				$('#frmtxn').attr('action', "hdfc.jsp");
			}
			 */

		});
		
		$("#cardno").keypress(function(){
			$(':radio').prop('checked', false);
		});
	
		$("input[type='radio']").click(function(){
		      
		   });
		
		
	</script>

</body>
</html>