package skylae.belajar.grails.miniblog

import java.util.Date;

class Post {
	String content
	Date dateCreated

	static constraints = {
		content(blank:false)
	}
	
	static belongsTo = [user:User]
	
	static mapping = {
		sort dateCreated:"desc"
	}
}
