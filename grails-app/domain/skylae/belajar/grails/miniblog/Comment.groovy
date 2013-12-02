package skylae.belajar.grails.miniblog


class Comment {
	String comment
	Date dateCreated
	Date lastUpdated
	
	User user
	
	static belongsTo=[feedback:Feedback]

    static constraints = {
		comment(blank: false, nullable: true, size: 5..500)
		user(nullable: true)
    }
	
	String toString()
	{
		if (comment.size()>20)
		{
			return comment.substring(0, 19)
		}
		else
		{
			return comment
		}
	}
}
