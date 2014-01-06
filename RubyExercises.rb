#1
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.each do |one_number|
  puts one_number
end
puts

#2
numbers.each do |one_number|
  puts one_number if one_number > 5
end
puts

#3
new_numbers = numbers.select {|n| n/2 != n/2.0} 
puts new_numbers
puts

#4
numbers.insert(-1,11)
numbers.insert(0,0)
puts numbers
puts

#5
numbers.delete(11)
numbers.insert(-1,3)
puts numbers
puts

#6
unique_numbers = numbers.uniq
puts unique_numbers
puts

#7
#The main difference between an Array and a Hash is that the Array has a numeric index based on the position in the array,
#while a Hash has an index based on a key value, so it can be accessed without regard to position

#8
one_point_eight_hash = {1 => 'I', 5 => 'V', 10 => 'X'}
one_point_nine_hash = {one:'I', five:'V', ten:'X'}
#difference is that keys are "automagically" made into symbols, but this precludes using numbers as your keys
puts one_point_eight_hash
puts
puts one_point_nine_hash
puts

#9
h = {a:1, b:2, c:3, d:4}
puts h[:b]
puts

#10
h[:e]=5
puts h

#11 doesn't exist

#12 doesn't exist

#13
h.delete_if {|key, value| value > 3.5 } 
puts h

#14
#Yes, hash values can be arrays
hash_of_arrays = {yes:['malista','nai'], no:['oxi','den']}
puts hash_of_arrays
#Yes, arrays can be filled with hashes
array_of_hashes = [{a:1,b:2},{c:3},{d:4}]
puts array_of_hashes

#15
#I prefer api.rubyonrails.org/ since it's the official one and I don't have to worry about any lag from other sites.
#Also, I prefer the sidebar setup as it is similar to my favorite Ruby source ruby-doc.org
