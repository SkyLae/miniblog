package skylae.belajar.grails.miniblog

class BlogController {

    def index()
	{
		if(!params.id)
		{
			params.id = "skylae"
		}
		redirect(action:'view', params:params)
	}
	
	def view(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		def user = User.findByUserId(params.id)
		[targetUser:user]
	}
	
	def show(Long id) {
		def blogInstance = Blog.get(id)
		if (!blogInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'post.label', default: 'Blog'), id])
			redirect(action: "view")
			return
		}

		[blogInstance: blogInstance]
	}
	
}
