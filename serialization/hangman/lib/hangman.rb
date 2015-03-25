def dictionary(file)
  dictionary = File.open(file, 'r')
  word = []
  
  dictionary.each do |words|
    word << words.strip if words.length > 5 and words.length < 12
  end

  word.sample.downcase
end

def check_word(word, guess, count, correct_letters, incorrect_letters)
  
  if word.downcase.include?(guess.downcase)
    puts "Correct!\n\n"
    correct_letters << guess unless correct_letters.include?(guess)
    puts "Your word is: #{word.gsub(/[^#{correct_letters}]/, '_ ')}"
  else
    puts "Incorrect!\n\n"
    incorrect_letters << guess unless incorrect_letters.include?(guess) 
    if correct_letters.empty?
      puts "Your word is: #{word.gsub(/./, '_ ')}"
    else
      puts "Your word is: #{word.gsub(/[^#{correct_letters}]/, '_ ')}"
    end    
     
    count -= 1    
  end
  return count
end

def win(word, correct_letters)
  array = word.split('')
  winner = true
  array.each {|e| winner = false if !correct_letters.include?(e)}
  
  return winner
end

def new_game
  file = '5desk.txt'
  word = dictionary(file)
  #word = "Hangman".downcase
  correct_letters = []
  incorrect_letters = []
  count = word.length + 5
  
  puts "\n\nYour word is #{word.length} letters long."
  puts "Your word is: #{word.gsub(/./, '_ ')}"
  
  while count > 0
    puts "Incorrect guessess so far: #{incorrect_letters.inspect}\n\n"
    puts "Enter a guess or press 1 to save:"
    guess = gets.chomp
    if guess.to_i == 1
      save_game(count, word, correct_letters, incorrect_letters, guess)
      break
    end
    
    
    count = check_word(word, guess, count, correct_letters, incorrect_letters)
    
    if win(word, correct_letters)
      puts "Congrats!! You win, the word was #{word}!!"
      break
    end
    
    if count > 0
      puts "You have #{count} incorrect guesses left.\n\n"
    else
      puts "You lose.  The word was #{word}.\n\n"
    end
  end
end

def save_game(count, word, correct_letters, incorrect_letters, guess)
  File.open("saveGame.txt", 'w') do |file|
    file.puts count
    file.puts word
    file.puts correct_letters.inspect
    file.puts incorrect_letters.inspect
    file.puts guess
  end
end

def load_game
  if File.exist?('saveGame.txt')
    contents = File.readlines('saveGame.txt')
    count = contents[0].to_i
    word = contents[1]
    correct_letters = contents[2]
    incorrect_letters = contents[3]
    guess = contents[4]
  else
    puts "Sorry, no saved game found! Starting new game!"
    new_game
  end
  check_word(word, guess, count, correct_letters, incorrect_letters)
end

puts "Press 1 to start a new game."
puts "Press 2 to load a saved game."
selection = gets.chomp.to_i

case selection
when 1
  new_game
when 2
  load_game
end
  


