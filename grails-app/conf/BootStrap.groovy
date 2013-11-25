import skylae.mukti.grails.miniblog.*

class BootStrap {

    def init = { servletContext ->
		//User user = new User(name:'Sky', email:'sky@gmail.com', webpage:'http://www.skylae.com')
		//User otherUser = new User(name:'Lae', email:'lae@gmail.com', webpage:'http://www.skylae.com')
		//if (!user.save()){
		//  log.error "Could not save user!!"
		//  log.error "${user.errors}"
		//}
		//if (!otherUser.save()){
		//  log.error "Could not save otherUser!!"
		//}
	  
	  
		
		//Feedback feedback = new Feedback(title:'First feedback', feedback:'This is my first feedback', user:user)
		//feedback.save()
	  
		//Comment comment = new Comment(comment:'Hello, my name is Lae', user:otherUser)
		//comment.feedback = feedback
		//comment.save();
    }
    def destroy = {
    }
}
