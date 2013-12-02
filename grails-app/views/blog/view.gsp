<!DOCTYPE html>
<html>
	<head>
		<title>Blog for ${targetUser.profile.fullName }</title>
		<meta name="layout" content="bootstrap">
	</head>
	
	<body>
		<h1>Blog</h1>
		
		<div class="allPosts">
			<g:each in="${targetUser.blog}" var="blog">
				<div class="postEntry">
					<div class="titleText">
						<g:link controller="blog" action="show" id="${blog.id }">${blog.title }</g:link>
					</div>
					<div class="postText">
						${blog.description }
					</div>
					<div class="postDate">
						${blog.dateCreated }
					</div>
				</div>			
				
			</g:each>
		</div>
		
	</body>
</html>
