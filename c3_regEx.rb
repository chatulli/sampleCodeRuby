#string to array by words
def words_from_string(string)
  string.downcase.scan(/[\w']+/) # regulärer ausdruck, scan transportiert, w matched wörter
end

p words_from_string("It doesn't make sense, if you cut it off here!")

def count_frequency(word_list)
  counts = Hash.new(0)
  for word in word_list
    counts[word] += 1
  end

  #counts.sort_by {|word, count| count} # aufsteigend nach Häufigkeit sortiert
  #counts.sort {|word, count| count <=> word} # absteigend nach alphabet sortiert, [1,2,3]   [[a,1],[b,1]]
  #counts.sort {|x,y| y <=> x} # absteigend nach alphabet sortiert
  #counts.sort_by {|word,count| word}.reverse! #aufsteigend nach alphabet
  #counts.sort_by {}.reverse! # rückwärts nach vorkommen
  #counts.sort_by # nach erstem vorkommen aufgelistet
  #counts.sort_by {|word, count| count}.reverse! # absteigend nach Häufigkeit sortiert
  counts
  
end

counts = count_frequency(["alle", "keiner", "einer", "viele","hier", "dort", "einer", "zwei", "ein", "viele", "gleich", "viele"])
counts.each do |word,count|
  puts "#{word}: #{count}"

			end

puts "-------"

def show_array_in_order(b)
	#c = Hash.new(0)
	#c = b
	p b
	b.sort_by #{|x,y| x} #{|x,y| y <=> x} *** todo: geht so nicht ***
	p b
end

a = show_array_in_order([["alle",1],["keine",2],["alle",2],["keine",1]])
a.each do |x,y| 
	puts "#{x}: #{y}"

end
#a = Hash.new { |x, y| hash[key] =  }
#a = show_array_in_order([1,2,3,4,5])
