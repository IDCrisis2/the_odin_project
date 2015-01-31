=begin
A Caesar cipher program written in Ruby which will take in a string of any length and an integer value for a shift length and returns an encrypted version of the original string.
=end 

def cipher(text, shift)
	new_text = []
	i = 0
	while i < text.length

		if text[i].ord.between?(65, 90)

			if (text[i].ord + shift.to_i) > 90
				new_letter = text[i].ord + shift.to_i - 26
			else
				new_letter = text[i].ord + shift.to_i
			end

		elsif text[i].ord.between?(97, 122)
			
			if (text[i].ord + shift.to_i) > 122
				new_letter = text[i].ord + shift.to_i - 26	
			else
				new_letter = text[i].ord + shift.to_i		
			end
		end
		
		if text[i] == " "
			new_text.push(text[i])
		else
			new_text.push(new_letter.chr)
		end
		i += 1
	end

	return new_text.join
end

puts "Welcome to the Caesar Cipher!  Please enter a phrase you would like encrypted!"
text_input = gets.chomp
puts "Please enter the shift factor as a number from 0 to 25"
shift_number = gets.chomp

puts cipher(text_input, shift_number)
