puts "Hello, Ruby Programmer"
puts "It is now #{Time.now}"

def say_goodnight(name)
	result = "Good night," + name
	return result
end

puts say_goodnight("ed")
