<%@ page import="skylae.mukti.grails.miniblog.User" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap"/>
		<title>MinBlog</title>
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />		
	</head>

	<body>
		<div class="row-fluid">
			<aside id="application-status" class="span3">
				<div class="well sidebar-nav">
					<h5>Menu Mini Blog</h5>
					<ul class="nav nav-list">
						<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
							<li><g:link controller="${c.logicalPropertyName}">${c.naturalName}</g:link></li>
						</g:each>
					</ul>
				</div>
			</aside>

			<section id="main" class="span9">

				<div class="hero-unit">
					<h2>Welcome to Mini Blog</h2>
				</div>	
					
				<div class="row-fluid">
				</div>

			</section>
		</div>
		
		<a href="http://github.com/robfletcher/twitter-bootstrap-scaffolding"><img id="github-ribbon" src="https://a248.e.akamai.net/assets.github.com/img/e6bef7a091f5f3138b8cd40bc3e114258dd68ddf/687474703a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f7265645f6161303030302e706e67" alt="Fork me on GitHub"></a>
	</body>
</html>
