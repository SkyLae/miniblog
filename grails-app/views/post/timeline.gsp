<!DOCTYPE html>
<html>
	<head>
		<title>Timeline for ${targetUser.profile.fullName }</title>
		<meta name="layout" content="bootstrap">
	</head>
	
	<body>
		<h3>What is ${targetUser.profile.fullName } hacking on right now?</h3>
		
		<g:if test="${flash.message }">
			<div class="flash">
				${flash.message }
			</div>
		</g:if>		
		
		<div>
			<g:form action="addPost" id="${params.id }">
				<g:textArea id='postContent' name="content" rows="3" cols="30"/><br>				
				<!-- <g:submitButton name="post" value="Post"/> -->
				<input type="submit" name="post" class="btn btn-primary" placeholder="Compose new Tweet..." value="Tweet"></input>
			</g:form>
		</div>
		
		<div class="allPosts">
			<g:each in="${targetUser.posts}" var="posting">
				<div class="postEntry">
					<div class="postText">
						${posting.content }
					</div>
					<div class="postDate">
						${posting.dateCreated }
					</div>
					<div>
						<g:link action="show" id="${posting.id }">Views full post</g:link>
					</div>
				</div>			
				
			</g:each>
		</div>	
		
	</body>
</html>
