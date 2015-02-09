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

puts bubble_sort([4,3,78,2,0,2])