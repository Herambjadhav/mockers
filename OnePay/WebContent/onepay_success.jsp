<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.css">
<link rel="stylesheet" href="onePay.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

</head>
<body>

<div class="panel panel-success">
      <div class="panel-heading">Payment is recieved by OnePay..!</div>
      <div class="panel-body">
      
      	<form role="form" action="index.jsp" method="get" name="frmtxn" id="frmtxn">
			<button type="submit" class="btn btn-primary" id="confirm" name="confirm">Make another Payment</button>
		</form>
	</div>
	
      </div>
    </div>
    

</body>
</html>
