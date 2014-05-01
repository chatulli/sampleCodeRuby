a = [2.4, "dezimal", 10,00]
puts a.class
puts a.length
puts a[0]
puts a[1]
puts a[2]
puts a[3]
puts "-----"

b = Array.new
puts b.class
puts b.length
b[0] = "another"
b[1] = "array"
puts b.to_s 	#alle items aus b hintereinander ausgeben
puts b.length
puts b[0]
puts "-----"

a = [1,3,5,7,9]
puts a[-1]
puts a[-2]
puts a[-99]
puts "--------------"
puts a[1,3].to_s
puts a[3,1].to_s 	# ab pos 3, 1 item ausgeben
puts a[-3,2].to_s  #ab pos -3, 2 items ausgeben
puts "-------------------"
puts a[1..3].to_s
puts a[1...3].to_s
puts a[3...3].to_s # nur was innerhalb ist
puts "------------------------"
puts a[-3..-1].to_s
puts a[-1..-3].to_s

puts "---------"
puts "---" + a.to_s

a[1]='bat'
puts a.to_s + "--"
a[3]=[9,8] # verschachteltes array
a[10]=99 # array verlängert sich auf 11 pos
puts a.to_s
a[2,2]='cat' #lässt den 2. wert fallen, wenn nur 1 wert angegeben bei length =2, also wird element an der Stelle 3 entfernt
puts a.to_s
a[4..6]=[]  # entfernt elems von pos 4 bis 6
puts a.to_s

puts "----------"

h = {  'dog' => 'caine', 'cat' => 'feline', 'donkey' => 'asinine' }
puts h.length()
puts h['dog']
h['cow'] = 'bovine'
h[12] = 'dodecine' # Zahlen werden wie symbole/platzhalter verwendet wegen zuweisung
h['cat'] = 99
puts h.to_s

# create hash map with default value
histogram = Hash.new(0)
puts histogram['rst']
histogram['rst'] = histogram['rst'] +1
puts histogram['rst']

# using symbols in hash maps as keys
inst_section = {
  cello: 'string',
  :clarinet => 'woodwind'
}

puts "A cello is a #{inst_section[:cello]} instrument."
puts "A clarinet is a #{inst_section[:clarinet]} instrument."

## using array as a stack
stack = []
stack.push("red")
stack.push("green")
stack.push("blue")
p stack
puts "pop:"+stack.pop
puts "pop:"+stack.pop
puts "pop:"+stack.pop
p stack

## using array as fifo queue
queue = []
queue.push("red")
queue.push("green")
queue.push("blue")
p queue  # p ist puts mit array.to_s
puts "shift:"+queue.shift()  # shift gibt aus und entfernt (wie stack pop)
puts "shift:"+queue.shift()
puts "shift:"+queue.shift()
p queue
