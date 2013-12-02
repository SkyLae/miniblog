package skylae.belajar.grails.miniblog

class PostController {

    def scaffold = true
	
	def index = {
		
		if(!params.id)
		{
			params.id = "skylae"
		}
		redirect(action:'timeline', params : params)		
	}
	
	def timeline(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		def user = User.findByUserId(params.id)
		[targetUser:user]
	}
	
	def addPost = {
		def user = User.findByUserId(params.id)
		if(user)
		{
			def post = new Post(params)
			user.addToPosts(post)
			if(user.save())
			{
				flash.message = "Successfully created Post"
			}
			else
			{
				user.discard()
				flash.message = "Invalid or empty post"
			}
		}
		else
		{
			flash.message = "Invalid User Id"
		}
		redirect(action: 'timeline', id: params.id)
	}
	
	def show(Long id) {
		def postInstance = Post.get(id)
		if (!postInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'post.label', default: 'Post'), id])
			redirect(action: "timeline")
			return
		}

		[postInstance: postInstance]
	}
}
