printf( "Number: %5.2f,\nString: %s\n",1.23,"hi")

def read_f(fname)
  file = File.open(fname, "r")
  data = file.read
  file.close
  return data
end

puts "Start"
puts read_f("testfile.txt")
puts "End"

puts "--------"

class File
  def File.open_and_process(*args)
    f = File.open(*args)
    yield f
    f.close()
  end
end

File.open("testfile.txt") do |file|
  while line = file.gets
    puts line
  end
end

File.open("testfile_out.txt","w") do |file|
  file.puts "This is a test"
end


