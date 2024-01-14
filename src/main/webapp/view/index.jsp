<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courses</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand"><b>Student Course Registration System</b></a>

			<form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<style>
.card {
	margin: 60px;
	width: 19rem;
}

.card:hover {
	box-shadow: 10px 10px 5px lightblue;
}

img {
	width: 50px;
	height: 200px
}

.btn {
	
}
</style>
			<div class="card">
				<img src="/src/javaCourse.png" class="card-img-top" alt="...">
				<div class="card-body">
					<h4>JAVA DEVELOPER</h4>
					<b>Duration : </b>4 months
					<p class="card-text">
						<b>Frontend : </b>HTML, CSS, JSP <b>Backend : </b>Core Java, Ad.
						Java
					</p>
					<form action="register" method="post">
						<div class="text-center">
							<button type="submit" class="btn btn-primary mb-2">Register
								here</button>
						</div>
					</form>
				</div>
			</div>
			<div class="card">
				<img src="/src/webCourse.png" class="card-img-top" alt="...">
				<div class="card-body">
					<h4>WEB DEVELOPER</h4>
					<b>Duration : </b>4 months
					<p class="card-text">
						<b>Frontend : </b>HTML, CSS, Angular <b>Backend : </b>Expresso
					</p>
					<form action="register" method="post">
						<div class="text-center">
							<button type="submit" class="btn btn-primary mb-2">Register
								here</button>
						</div>
					</form>
				</div>
			</div>
			<div class="card">
				<img src="/src/sqlCourse.jpeg" class="card-img-top" alt="...">
				<div class="card-body">
					<h4>SQL DEVELOPER</h4>
					<b>Duration : </b>4 months
					<p class="card-text">
						<b>Imp : </b>DBMS, RDBMS<br> <b>V.Imp : </b>Advance SQL
					</p>
					<form action="register" method="post">
						<div class="text-center">
							<button type="submit" class="btn btn-primary mb-2">Register
								here</button>
						</div>
					</form>
				</div>
			</div>
			<div class="card">
				<img src="/src/pythonCourse.png" class="card-img-top" alt="...">
				<div class="card-body">
					<h4>PYTHON DEVELOPER</h4>
					<b>Duration : </b>4 months
					<p class="card-text">
						<b>Frontend : </b>HTML, CSS, JSP <b>Backend : </b>Python, Ad.
						Python
					</p>
					<form action="register" method="post">
						<div class="text-center">
							<button type="submit" class="btn btn-primary mb-2">Register
								here</button>
						</div>
					</form>
				</div>
			</div>
			<div class="card">
				<img src="/src/aiCourse.jpeg" class="card-img-top" alt="...">
				<div class="card-body">
					<h4>AI DEVELOPER</h4>
					<b>Duration : </b>4 months
					<p class="card-text">
						<b>Imp. : </b>Neural Network, Cognitive System, Deep Learning
					</p>
					<form action="register" method="post">
						<div class="text-center">
							<button type="submit" class="btn btn-primary mb-2">Register
								here</button>
						</div>
					</form>
				</div>
			</div>
			<div class="card">
				<img src="/src/awsCourse.png" class="card-img-top" alt="...">
				<div class="card-body">
					<h4>AWS DEVELOPER</h4>
					<b>Duration : </b>4 months
					<p class="card-text">
						<b>Imp. : </b>Network Security, Data Security, Business Continuity
					</p>
					<form action="register" method="post">
						<div class="text-center">
							<button type="submit" class="btn btn-primary mb-2">Register
								here</button>
						</div>
					</form>
				</div>
			</div>
			<div class="card">
				<img src="/src/mlCourse.jpeg" class="card-img-top" alt="...">
				<div class="card-body">
					<h4>ML DEVELOPER</h4>
					<b>Duration : </b>4 months
					<p class="card-text">
						<b>Imp. : </b>Robotics, Computer Vision, Anomoly Detection
					</p>
					<form action="register" method="post">
						<div class="text-center">
							<button type="submit" class="btn btn-primary mb-2">Register
								here</button>
						</div>
					</form>
				</div>
			</div>
			<div class="card">
				<img src="/src/mernCourse.png" class="card-img-top" alt="...">
				<div class="card-body">
					<h4>MERN DEVELOPER</h4>
					<b>Duration : </b>4 months
					<p class="card-text">
						<b>Frontend : </b>HTML, CSS, React <b>Backend : </b>Expresso <br>
						<b>Database : </b>Mongo Db
					</p>
					<form action="register" method="post">
						<div class="text-center">
							<button type="submit" class="btn btn-primary mb-2">Register
								here</button>
						</div>
					</form>
				</div>
			</div>
			<div class="card">
				<img src="/src/meanCourse.png" class="card-img-top" alt="...">
				<div class="card-body">
					<h4>MEAN DEVELOPER</h4>
					<b>Duration : </b>4 months
					<p class="card-text">
						<b>Frontend : </b>HTML, CSS, Angular <b>Backend : </b>Expresso <br>
						<b>Database : </b>Mongo Db
					</p>
					<form action="register" method="post">
						<div class="text-center">
							<button type="submit" class="btn btn-primary mb-2">Register
								here</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>