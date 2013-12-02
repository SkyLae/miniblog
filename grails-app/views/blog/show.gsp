<%@ page import="skylae.belajar.grails.miniblog.Blog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Blog')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-book" class="content scaffold-show">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message">${flash.message}</div>
			</g:if>
			<ol class="property-list book">
			
				<g:if test="${blogInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="blog.content.label" default="Title" /></span>
					<span class="property-value"><g:fieldValue bean="${blogInstance}" field="title"/></span>					
				</li>
				</g:if>
				<g:if test="${blogInstance?.description}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="blog.content.label" default="Description" /></span>
					<span class="property-value"><g:fieldValue bean="${blogInstance}" field="description"/></span>					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset>
					<g:hiddenField name="id" value="${blogInstance?.id}" />
					<g:link class="edit" action="edit" id="${blogInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
