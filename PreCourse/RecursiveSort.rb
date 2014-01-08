def sort some_array # This "wraps" recursive_sort.
	recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array # Your fabulous code goes here.
	new_unsorted=[]
	min_item = nil
	unsorted_array.each do |a|
		if min_item.nil?
			min_item = a
		elsif a < min_item
			new_unsorted.push(min_item)
			min_item = a
		else
			new_unsorted.push(a)
		end
	end
	sorted_array.push(min_item)
	if !new_unsorted.empty?
		recursive_sort new_unsorted, sorted_array
	else
		sorted_array
	end
end

unsorted_array = %w(the quick brown fox jumped over the lazy dogs)
it = sort(unsorted_array)
puts it.inspect
