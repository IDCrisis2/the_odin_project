def dictionary(file)
  dictionary = File.open(file, 'r')
  word = []
  
  dictionary.each do |words|
    word << words if words.length > 5 and words.length < 12
  end

  word.sample
end

file = '5desk.txt'
correct = 0
incorrect = 0
correct_letters = []
incorrect_letters = []
test = "Hagman"
count = test.length

#puts dictionary(file)
puts "Your word is #{test.length} letters long."
while count > 0
  puts "Enter a guess:"
  guess = gets.chomp
  if test.downcase.include?(guess.downcase)
    puts "Correct!"
    correct += 1
    correct_letters << guess unless correct_letters.include?(guess)
  else
    puts "Incorrect"
    incorrect += 1
    incorrect_letters << guess unless incorrect_letters.include?(guess)
    puts "Incorrect guesses: #{incorrect_letters.inspect}"
    count -= 1
  end
end
puts test