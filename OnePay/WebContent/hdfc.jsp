<html lang="en">
<head>
<meta charset="utf-8">
<title>click demo</title>
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.css">
<link rel="stylesheet" href="onePay.css">
<style>
p {
	color: red;
	margin: 5px;
	cursor: pointer;
}

p:hover {
	background: yellow;
}
</style>
<script src="jquery.min.js"></script>

<script>
	$(document).ready(function() {
		$('#sel1').change(function() {
			if ($('#sel1').val() == "06691140014715") {
				$('#bal').html(1520000);
			} else if ($('#sel1').val() == "06692470002693") {
				$('#bal').html(1620000);
			} else if ($('#sel1').val() == "06692470002225") {
				$('#bal').html(1720000);
			}
		});
	});
</script>

</head>
<body>

	<div class="container">
		<h2>HDFC Bank</h2>
		<form role="form" action="onepay_success.jsp" method="get"
			name="frmtxn" id="frmtxn">
			<div class="form-group">
				<label for="sel1">Select Account:</label> <select
					class="form-control" id="sel1">
					<option>06691140014715</option>
					<option>06692470002693</option>
					<option>06692470002225</option>
				</select>
			</div>

			<div class="form-group" style="display: show">
				<label for="pwd">Balance</label> <label for="pwd" id="bal">1520000</label>
			</div>


			<div class="form-group">
				<label for="pwd">Amount:</label> <input type="text" readonly="readonly"
					class="form-control" id="amt"
					value="<%=request.getParameter("debitAmt")%>" name="amt">
			</div>

			<button type="button" class="btn btn-default" id="cancel"
				name="cancel">Cancel</button>
			<button type="submit" class="btn btn-success" id="confirm"
				name="confirm">Confirm Payment</button>
		</form>
	</div>

	<script>
		$("#cancel").click(function() {
			$('#frmtxn').attr('action', "onepay_failure.jsp").submit();
		});
	</script>

</body>
</html>