
<!DOCTYPE html>
<html ">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid bg-dark">
	<header class="d-flex flex-wrap justify-content-center py-3 mb-4">
				<a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-light text-decoration-none navbar-brand">
					LifeCart
				</a>
				<ul class="nav nav-pills">
					<li class="nav-item"><a href="/" class="nav-link " aria-current="page">Home</a></li>
					<c:if test="${username eq null}">
						<li class="nav-item"><a href="/login" class="nav-link">Login</a></li>
						<li class="nav-item"><a href="/register" class="nav-link">Register</a></li>
					</c:if>
					<c:if test="${username ne null}">
						
						<li class="nav-item"><a href="/groceries" class="nav-link">Buy Item</a></li>
						<li class="nav-item"><a href="/checkout" class="nav-link">My Orders</a></li>
						<li class="nav-item"><a href="/logout" class="nav-link">Logout</a></li>
					</c:if>
					
				</ul>
			</header>
			</div>
</body>
</html>