
def call_block
	puts "Start of method"
	yield
	yield
  puts "End"
 end 

 call_block { puts "in the block" 
 }