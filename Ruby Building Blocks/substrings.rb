def substrings (text, substring_array)
	match = {}
	word = text.split(/\s+/).inspect
	substring_array.each do |sub|
		word.each do |word_match|
			
		end
	end
	return word
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "be"]

puts substrings("below me", dictionary)