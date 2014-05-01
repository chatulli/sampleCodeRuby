require_relative 'csv_reader' #inherit class, could all be in one file

reader = CsvReader.new

ARGV.each do |csv_file|
	STDERR.puts "Processing #{csv_file}"

	reader.read_in_csv_data(csv_file)
end

puts "Total value = #{reader.total_value_in_stock}"