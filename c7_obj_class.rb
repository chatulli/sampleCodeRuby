#about objects, classes, methods, instance variables, symbols, writable attributes, virtual attributes

class BookInStock
	def initialize(isbn, price)
		@isbn = isbn #als instance var bleiben var auch außerhalb von init erhalten
		@price = Float(price) # no other obj can access instance var, can be manipulated from outside by methods, then they are attributes
	end

	#methode, die die instance var als symbole von außen lesbar macht
	attr_reader :isbn, :price #symbols

	# äquivalent zur FKT attr_reader
	# def isbn # method to manipulate isbn instance var
	# 	@isbn
	# end
	# def price
	# 	@price
	# end
	
	#methode, die die instance var als symbole von außen überschreibbar macht
	attr_writer :isbn, :price

	# äquivalent zur FKT attr_writer
	# def price= (new_price) # methods that end with equal sign "=" assign a new value to instance var
	# 	@price = new_price
	# end

	# äquivalent zur FKT attr_reader und attr_writer
	attr_accessor :price
	# isbn bleibt attr_reader, dann ist diese var nicht veränderbar, sondern nur lesbar

	def price_in_cents #virtual attribute, def by method
		Integer(price*100)
	end

	def price_in_cents= (cents) #mapping instance var internally to a virtual attribute
		@price = cents/100.0
	end

	def to_s
		"ISBN: #{@isbn} , price: #{@price} "
	end

	# attributes are methods, available/exposed to the outside

end

book1 = BookInStock.new("isbn1",10)
puts "ISBN = #{book1.isbn}" # greift auf instanz var zu
puts "PRICE = #{book1.price}"
puts "---------"

book1.price = book1.price * 0.75 # ruft methode auf, die instance var überschreibt
puts "New price = #{book1.price}"

book1.price_in_cents
puts "Price in Cents = #{book1.price_in_cents}"

puts "---------"

book1.price_in_cents = 1234 # virtuelles attribute hat keine instance var
puts "Price of virt attribute = #{book1.price_in_cents}"

puts "----------"

book2 = BookInStock.new("isbn2",3.14)
puts book2  # gibt Rückgabewert von initialize bzw. Obj. Erzeugung aus
book3 = BookInStock.new("isbn3","5.67")


puts book3
