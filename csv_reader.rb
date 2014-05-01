require 'csv' #inherit class, could all be in one file
require_relatvie 'book_in_stock' #inherit class

class CsvReader
	def initialize
		@book_in_stock[]
	end

	def read_in_csv_data(csv_file)
		CSV.foreach(csv_file, headers: true) do |row| # headers: true identifiziert oberste Zeile als SpaltenTitel
			@book_in_stock << BookInStock.new(row["ISBN"], row["Price"]) # bentutzt Daten um ein BookInStock obj zu erzeugen
	end
end