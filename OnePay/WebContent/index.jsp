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

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

</head>
<body>

<div class="container">
  <h2>Merchant Page</h2>
  <form role="form" action="MainServlet" method="post">
    <div class="form-group">
      <label for="email">MerchantId:</label>
      <input type="text" class="form-control" id="mid" value="Amazon" name="mid">
    </div>
    
    <div class="form-group">
      <label for="pwd">Amount:</label>
      <input type="text" class="form-control" id="amt" value="100" name="amt">
    </div>
    
    <button type="submit" class="btn btn-primary">Proceed to Pay</button>
  </form>
</div>

</body>
</html>
