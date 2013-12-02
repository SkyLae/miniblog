package skylae.belajar.grails.miniblog

class Blog {
	String title
	String description
	Date dateCreated

    static constraints = {
    }
	
	static belongsTo = [user:User]
}
