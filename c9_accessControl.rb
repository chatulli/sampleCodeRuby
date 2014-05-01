#never expose methods that could leave an object in an invalid state
#3 levels of protection
#public, protected (within familiy, ie class and subclasses), private (only in obj context, known as self)

# default is public

class MyClass

	def method1 #public
		#...
	end

	protected # all methods from here will be protected
	def method2 #protected
		#...
	end

	private # all methods from here will be private
	def mehtod3
		#...
	end

	public # all methods from here will be public again
	def method4
		#...
	end

	#alternative by accesss control functions
	public :method1, :method4
	protected :method2
	private :mehtod3

end
