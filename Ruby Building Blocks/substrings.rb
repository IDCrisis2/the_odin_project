def substrings (text, substring_array)
	match = {}
	word = text.downcase.split(' ')
	count = 0
	substring_array.each do |sub|
		word.each do |word_match|
			if word_match.include? sub
				if match.has_key?(sub)
					match[sub] = count += 1
				else
					match[sub] = count = 1
				end
			end
		end
		
	end
	return match
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts ''
puts substrings("below", dictionary)
puts ''
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
puts ''
