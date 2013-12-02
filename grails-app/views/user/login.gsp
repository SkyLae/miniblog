<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="bootstrap" />
	<title>User Login</title>
	</head>
<body>
	<div class="body">
		<g:form action="doLogin" method="post" class="form-horizontal">
		
			<div class="control-group">
				<h1>Login</h1>
				<label class="control-label" for="inputEmail">Email</label>
				<div class="controls">
					<input type="text" id="inputEmail" placeholder="Email">
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label" for="inputPassword">Password</label>
				<div class="controls">
					<input type="password" id="inputPassword" placeholder="Password">
				</div>
			</div>
			
			<div class="control-group">
				<div class="controls">
					<label class="checkbox">
						<input type="checkbox"> Remember me
					</label>
				<button type="submit" class="btn btn-primary">Sign in</button>
				</div>
			</div>			
			
		</g:form>
	</div>
</body>
</html>
