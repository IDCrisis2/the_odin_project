def bubble_sort(array)
	n = array.length
	j = 1
	begin
		swapped = false
		for i in 1..n-1 do
			puts "Iteration number: #{j}, array: #{array.inspect}"
			j += 1
			if array[i - 1] > array[i]
				array[i - 1], array[i] = array[i], array[i - 1]
				swapped = true
			end
		end
		n = n -1
	end until !swapped
	return "Sorted array: #{array.inspect}"
end

def bubble_sort_by(unsorted_array)
    swapped = true
    while swapped
        swapped = false
        (0...unsorted_array.size-1).each do |i|
            if yield(unsorted_array[i], unsorted_array[i+1]) < 0 
                holder = unsorted_array[i+1]
                unsorted_array[i+1] = unsorted_array[i]
                unsorted_array[i] = holder
                swapped = true
            end
        end
    end
    return unsorted_array
end

puts bubble_sort([4,3,78,2,0,2])

array_to_sort_by = ["hi", "hello", "hey"]

bubble_sort_by(array_to_sort_by) do |left,right|
    right.length - left.length
end

puts array_to_sort_by.inspect