person = "Tim" #var is not an obj, just a reference to an object
puts "the object in 'person' is a #{person.class}"
puts "the object in 'person' has an id of #{person.object_id}"
puts "the object in 'person' has the value: #{person}"

 person2 = person #same values as person, because they both reference same obj
 person3 = person.dup #dup creates a new String obj with identical content, a change of person will not effect person3
 person[0]='J'
 puts "person 1 is #{person}"
 puts "person 2 is #{person2}"
 puts "person 3 is #{person3}"

 puts "---------------------------"

 person2 = person
 puts "person 1 is #{person}"
 puts "person 2 is #{person2}"

 puts "--------"
 person.freeze #prevent change of object, runtime error when trying to modify see below
 person2[0]='K'
 