<%@ page import="skylae.belajar.grails.miniblog.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-book" class="content scaffold-show">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message">${flash.message}</div>
			</g:if>
			<ol class="property-list book">
			
				<g:if test="${postInstance?.content}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="post.content.label" default="Content" /></span>
					
						<span class="property-value"><g:fieldValue bean="${postInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset>
					<g:hiddenField name="id" value="${postInstance?.id}" />
					<g:link class="edit" action="edit" id="${postInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
