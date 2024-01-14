<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign-Up/Login Form</title>
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="css/style.css">


</head>

<body>
	<div class="form">

		<div class="tab-content">
			<div id="signup">
				<h1>Course Enrollment</h1>
				<%=courseName%>
				<form action="register.php" method="post">

					<div class="top-row">
						<div class="field-wrap">
							<label> First Name:<span class="req">*</span>
							</label> <input type="text" required autocomplete="off" name="fname"
								id="fname" />
						</div>

						<div class="field-wrap">
							<label> Last Name:<span class="req">*</span>
							</label> <input type="text" name="lname" id="lname" required
								autocomplete="off" />
						</div>
					</div>

					<div class="field-wrap">
						<label> Gender: </label> <input id="gender" list="gend"
							name="gender">
						<datalist id="gend">
							<option value="m">Male</option>
							<option value="f">Female</option>
						</datalist>
					</div>

					<div class="field-wrap">
						<label> Department:<span class="req">*</span>
						</label> <input id="department" list="departments" required
							autocomplete="off" name="department">
						<datalist id="departments">
							<option value="All">All Departments</option>
							<option value="CS">CS-Computer Science</option>
							<option value="CE">CE-Computer Engineering</option>
							<option value="ACCI">ACCI-Accounting</option>
							<option value="AHSI">AHSI-Art History</option>
							<option value="BIOL">BIOL-Biology</option>
							<option value="BUAN">BUAN-Business Analytics</option>
							<option value="ITM">ITM-IT Management</option>
						</datalist>
					</div>

					<div class="field-wrap">
						<label> Contact Number:<span class="req">*</span>
						</label> <input type="text" name="contact" id="contact" required
							autocomplete="off" />
					</div>



					<div class="field-wrap">
						<label> Email Address:<span class="req">*</span>
						</label> <input type="email" required autocomplete="off" name="email"
							id="email" />
					</div>


					<button type="submit" id="button" class="button button-block" />
					Buy Course
					</button>

				</form>

			</div>

			<div id="login">
				<h1>Welcome Back!</h1>

				<form action="auth.php" method="post">

					<div class="field-wrap">
						<label> Username: <span class="req">*</span>
						</label> <input type="text" required autocomplete="off" name="username"
							id="username" />
					</div>

					<div class="field-wrap">
						<label> Password<span class="req">*</span>
						</label> <input type="password" required autocomplete="off"
							name="password" id="password" />
					</div>


					<button class="button button-block" />
					Log In
					</button>

				</form>

			</div>

		</div>
		<!-- tab-content -->

	</div>
	<!-- /form -->
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

	<script src="js/index.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#username').change(function() {
				$.ajax({
					url : "checkUser.php",
					data : {
						username : $('#username').val()
					},
					type : "GET",
					context : document.body,
					success : function(result) {
						if ($.trim(result) == "1") {
							alert("Record for this username already exists");
						}
					}
				});
			});

			$('#email').change(function() {
				$.ajax({
					url : "checkEmail.php",
					data : {
						email : $('#email').val()
					},
					type : "GET",
					context : document.body,
					success : function(result) {
						if ($.trim(result) == "1") {
							alert("Record for this email already exists");
						}
					}
				});
			});

		});
	</script>
	<style>
*, *:before, *:after {
	box-sizing: border-box;
}

html {
	overflow-y: none;
	overflow-x: none;
}

body {
	background: #c1bdba;
	font-family: 'Titillium Web', sans-serif;
}

a {
	text-decoration: none;
	color: #1ab188;
	-webkit-transition: .5s ease;
	transition: .5s ease;
}

a:hover {
	color: #428bca;
}

.form {
	background: rgba(19, 35, 47, 0.9);
	padding: 40px;
	max-width: 600px;
	margin: 40px auto;
	border-radius: 4px;
	box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
}

.tab-group {
	list-style: none;
	padding: 0;
	margin: 0 0 40px 0;
}

.tab-group:after {
	content: "";
	display: table;
	clear: both;
}

.tab-group li a {
	display: block;
	text-decoration: none;
	padding: 15px;
	background: rgba(160, 179, 176, 0.25);
	color: #a0b3b0;
	font-size: 20px;
	float: left;
	width: 50%;
	text-align: center;
	cursor: pointer;
	-webkit-transition: .5s ease;
	transition: .5s ease;
}

.tab-group li a:hover {
	background: #A0CAD2;
	color: #ffffff;
}

.tab-group .active a {
	background: #428bca;
	color: #ffffff;
}

.tab-content>div:last-child {
	display: none;
}

h1 {
	text-align: center;
	color: #ffffff;
	font-weight: 300;
	margin: 0 0 40px;
}

label {
	position: absolute;
	-webkit-transform: translateY(6px);
	transform: translateY(6px);
	left: 13px;
	color: rgba(255, 255, 255, 0.5);
	-webkit-transition: all 0.25s ease;
	transition: all 0.25s ease;
	-webkit-backface-visibility: hidden;
	pointer-events: none;
	font-size: 22px;
}

label .req {
	margin: 2px;
	color: #1ab188;
}

label.active {
	-webkit-transform: translateY(50px);
	transform: translateY(50px);
	left: 2px;
	font-size: 14px;
}

label.active .req {
	opacity: 0;
}

label.highlight {
	color: #ffffff;
}

input, textarea {
	font-size: 22px;
	display: block;
	width: 100%;
	height: 100%;
	padding: 5px 10px;
	background: none;
	background-image: none;
	border: 1px solid #a0b3b0;
	color: #ffffff;
	border-radius: 0;
	-webkit-transition: border-color .25s ease, box-shadow .25s ease;
	transition: border-color .25s ease, box-shadow .25s ease;
}

input:focus, textarea:focus {
	outline: 0;
	border-color: #428bca;
}

textarea {
	border: 2px solid #a0b3b0;
	resize: vertical;
}

.field-wrap {
	position: relative;
	margin-bottom: 40px;
}

.top-row:after {
	content: "";
	display: table;
	clear: both;
}

.top-row>div {
	float: left;
	width: 48%;
	margin-right: 4%;
}

.top-row>div:last-child {
	margin: 0;
}

.button {
	border: 0;
	outline: none;
	border-radius: 0;
	padding: 15px 0;
	font-size: 2rem;
	font-weight: 600;
	text-transform: uppercase;
	letter-spacing: .1em;
	background: #428bca;
	color: #ffffff;
	-webkit-transition: all 0.5s ease;
	transition: all 0.5s ease;
	-webkit-appearance: none;
}

.button:hover, .button:focus {
	background: #428bca;
}

.button-block {
	display: block;
	width: 100%;
}

.forgot {
	margin-top: -20px;
	text-align: right;
}
</style>

</body>
</html>