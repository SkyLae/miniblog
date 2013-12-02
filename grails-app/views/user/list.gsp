
<%@ page import="skylae.mukti.grails.miniblog.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap"/>
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>		
	</head>

	<body>
		<div class="row-fluid">
			<aside id="application-status" class="span3">
				<div class="well sidebar-nav">
					<h5>Menu User</h5>
					<ul class="nav nav-list">
						<li>
							<g:link class="create" action="create">
							<g:message code="default.new.label" args="[entityName]" />
							</g:link>
						</li>
					</ul>
				</div>
			</aside>

			<section id="main" class="span9">

				<div class="hero-unit">					
					<div id="list-user" class="content scaffold-list" >
						<h2><g:message code="default.list.label" args="[entityName]" /></h2>
						<g:if test="${flash.message}">
							<div class="message">${flash.message}</div>
						</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'user.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="webpage" title="${message(code: 'user.webpage.label', default: 'Webpage')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: userInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "webpage")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceTotal}" />
			</div>
		</div>			
				</div>
					
				<div class="row-fluid">
				</div>

			</section>
		</div>
		
		<!-- <a href="http://github.com/robfletcher/twitter-bootstrap-scaffolding"><img id="github-ribbon" src="https://a248.e.akamai.net/assets.github.com/img/e6bef7a091f5f3138b8cd40bc3e114258dd68ddf/687474703a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f7265645f6161303030302e706e67" alt="Fork me on GitHub"></a> -->
	</body>
</html>
