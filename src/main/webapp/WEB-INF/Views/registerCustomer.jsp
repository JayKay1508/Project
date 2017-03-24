<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.asdfgh {
	margin-left: 2em;
}

.form-control {
	width: 50%;
}
</style>

<script type="text/javascript">
	function formRegister() {
		// Make quick references to our fields
		var firstname = document.getElementById('firstname');
		var lastname = document.getElementById('lastname');
		var username = document.getElementById('username');
		var password = document.getElementById('password');
		var phone = document.getElementById('phonenumber');
		var email = document.getElementById('email');
		var apartmentnumber = document.getElementById('apartmentnumber');
		var streetname = document.getElementById('streetname');
		var city = document.getElementById('city');
		var state = document.getElementById('state');
		var country = document.getElementById('country');
		var zipcode = document.getElementById('zipcode');
		// Check each input in the order that it appears in the form!
		if (notEmpty(firstname, "Firstname Should not be empty")) {
			if (isAlphabet(firstname, "Please enter only letters for Firstname")) {
				if (notEmpty(username, "Username Should not be empty")) {
					if (isAlphabet(username,
							"Please enter only letters for Username")) {
						if (notEmpty(password, "Password Should not be empty")) {
							if (isAlphanumeric(password,
									"Only Numbers and Letters for Password")) {
								if (notEmpty(phone,
										"PhoneNumber Should not be empty")) {
									if (isNumeric(phone,
											"Please enter a valid PhoneNumber")) {
										if (notEmpty(email,
												"EmailId Should not be empty")) {
											if (emailValidator(email,
													"Enter a valid email Id ")) {

												if (notEmpty(apartmentnumber,
														"Apartmentnumber Should not be empty")) {
													if (notEmpty(streetname,
															"Streetname Should not be empty")) {
														if (notEmpty(city,
																"City Should not be empty")) {
															if (notEmpty(state,
																	"State Should not be empty")) {
																if (notEmpty(
																		country,
																		"Country Should not be empty")) {

																	if (notEmpty(
																			zipcode,
																			"Zipcode Should not be empty")) {
																		if (isNumeric(
																				zipcode,
																				"Please enter a valid zip code")) {
																			return true;
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		return false;
	}

	function notEmpty(elem, helperMsg) {
		if (elem.value.length == 0) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}
	function isNumeric(elem, helperMsg) {
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphabet(elem, helperMsg) {
		var alphaExp = /^[a-z A-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphanumeric(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function emailValidator(elem, helperMsg) {
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		if (elem.value.match(emailExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<div class="asdfgh">
		<form action="newUsers" onsubmit="return formRegister()"
			class="form-horizontal" method="post" name="form" name="register">

			<div class="form-group">
				<label for="firstname">First Name</label> <input
					class="form-control" name="firstname" id="firstname" type="text"
					placeholder="Enter First Name">
			</div>

			<div class="form-group">
				<label for="lastname">Last Name</label> <input class="form-control"
					name="lastname" id="lastname" type="text"
					placeholder="Enter Last Name">
			</div>
			<div class="form-group">
				<label for="username">User Name</label> <input class="form-control"
					name="username" id="username" type="text"
					placeholder="Enter User Name">
			</div>

			<div class="form-group">
				<label for="password">Password</label> <input class="form-control"
					name="password" id="password" type="password"
					placeholder="Password">
			</div>
			<div class="form-group">
				<label for="phonenumber">Phone Number</label> <input
					class="form-control" name="phonenumber" id="phonenumber" type=""
					placeholder="Enter Phone Number">
			</div>
			<div class="form-group">
				<label for="email">E-mail</label> <input class="form-control"
					name="email" id="email" type="email" placeholder="E-mail">
			</div>


			<div class="form-group">
				<label for="apartmentNumber">Apartment Number</label> <input
					class="form-control" name="apartmentNumber" id="apartmentnumber"
					type="text" placeholder="Apartment Number">
			</div>
			<div class="form-group">
				<label for="streetName">Street Name</label> <input
					class="form-control" name="streetName" id="streetname" type="text"
					placeholder="Street Name">
			</div>
			<div class="form-group">
				<label for="city">City</label> <input class="form-control"
					name="city" id="city" type="text" placeholder="City">
			</div>
			<div class="form-group">
				<label for="state">State</label> <input class="form-control"
					name="state" id="state" type="text" placeholder="State">
			</div>
			<div class="form-group">
				<label for="country">Country</label> <input class="form-control"
					name="country" id="country" type="text" placeholder="Country">
			</div>
			<div class="form-group">
				<label for="zipcode">Zipcode</label> <input class="form-control"
					name="zipcode" id="zipcode" type="text" placeholder="Zipcode">
			</div>
			<input type="submit" value="register">

		</form>

	</div>

</body>
</html>
