#Create a method that takes an array as a parameter.
#Within that method, try calling methods that do not mutate the caller.
#How does that affect the array outside of the method?
#What about when you call a method that mutates the caller within the method?

def reverse_array my_array
	my_array.reverse!
end

outer_obj = [1, 2, 3, 4, 5]
puts reverse_array outer_obj
puts outer_obj

