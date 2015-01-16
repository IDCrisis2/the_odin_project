# Learn to program by Chris Pine

# Chapter 1 - Numbers
#--------------------

puts 1 + 2
puts ""

puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0
puts ""

puts 1+2
puts 2*3
puts 5-8
puts 9/2
puts""

puts 5 * (12-8) + -15
puts 98 + (59872 / (13*8)) * -52
puts ""

# Chapter 2 - Letters
#--------------------

puts 'Hello, world!'
puts ''
puts 'Good-bye.'
puts ""

puts 'I like' + 'apple pie'
puts ""

puts 'I like ' + 'apple pie.'
puts 'I like' + ' apple pie.'
puts ""

puts 'blink ' * 4
puts ""

puts  12  +  12
puts '12' + '12'
puts '12  +  12'
puts ""

puts  2  *  5
puts '2' *  5
puts '2  *  5'
puts ""

#code below produces errors
#puts '12' + 12
#puts '2' * '5'
#puts ""

# puts 'Betty' + 12
# puts 'Fred' * 'John'
# puts ""

# puts 'You're swell!'
# puts ""

puts 'You\'re swell!'
puts ""

puts 'You\'re swell!'
puts 'backslash at the end of a string:  \\'
puts 'up\\down'
puts 'up\down'
puts ""

# Chapter 3 - Variables and Assignments
#--------------------------------------

puts '...you can say that again...'
puts '...you can say that again...'
puts ""

myString = '...you can say that again...'
puts myString
puts myString
puts ""

name = 'Patricia Rosanna Jessica Mildred Oppenheimer'
puts 'My name is ' + name + '.'
puts 'Wow!  ' + name + ' is a really long name!'
puts ""

composer = 'Mozart'
puts composer + ' was "da bomb", in his day.'

composer = 'Beethoven'
puts 'But I prefer ' + composer + ', personally.'
puts ""

var = 'just another ' + 'string'
puts var

var = 5 * (1+2)
puts var
puts ""

var1 = 8
var2 = var1
puts var1
puts var2

puts ''

var1 = 'eight'
puts var1
puts var2
puts""

# Chapter 4 - Mixing it Up
#-------------------------

#code below produces errors
# var1 = 2
# var2 = '5'

# puts var1 + var2
# puts ""

var1 = 2
var2 = '5'

puts var1.to_s + var2
puts ""

var1 = 2
var2 = '5'

puts var1.to_s + var2
puts var1 + var2.to_i
puts ""

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i
puts ""

puts 20
puts 20.to_s
puts '20'
puts ""

# code below works, just do not want to input each time program is run
# puts gets
# puts ""

# code below works, just do not want to input each time program is run
# puts 'Hello there, and what\'s your name?'
# name = gets
# puts 'Your name is ' + name + '?  What a lovely name!'
# puts 'Pleased to meet you, ' + name + '.  :)'
# puts ""

# puts 'Hello there, and what\'s your name?'
# name = gets.chomp
# puts 'Your name is ' + name + '?  What a lovely name!'
# puts 'Pleased to meet you, ' + name + '.  :)'
# puts ""

# Chapter 5 - More About Methods
#-------------------------------

puts 'hello '.+ 'world'
puts (10.* 9).+ 9
puts ""

# code below produces errors
# iCantBelieveIMadeAVariableNameThisLongJustToPointToA3 = 3
# puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3
# self.puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3
# puts ""

var1 = 'stop'
var2 = 'stressed'
var3 = 'Can you pronounce this sentence backwards?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3
puts ""

# code below produces errors
# puts 'What is your full name?'
# name = gets.chomp
# puts 'Did you know there are ' + name.length + ' characters in your name, ' + name + '?'
# puts ""

# code below works, just do not want to input each time program is run
# puts 'What is your full name?'
# name = gets.chomp
# puts 'Did you know there are ' + name.length.to_s + ' characters in your name, ' + name + '?'
# puts ""

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters
puts ""

lineWidth = 50
puts(                'Old Mother Hubbard'.center(lineWidth))
puts(               'Sat in her cupboard'.center(lineWidth))
puts(         'Eating her curds an whey,'.center(lineWidth))
puts(          'When along came a spider'.center(lineWidth))
puts(         'Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog away.'.center(lineWidth))
puts ""

lineWidth = 40
str = '--> text <--'
puts str.ljust  lineWidth
puts str.center lineWidth
puts str.rjust  lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)
puts ""

puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7
puts ""

puts((5-2).abs)
puts((2-5).abs)
puts ""

puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(99999999999999999999999999999999999999999999999999999999999))
puts('The weatherman said there is a '+rand(101).to_s+'% chance of rain,')
puts('but you can never trust a weatherman.')
puts ""

srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ""

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)
puts ""

# Chapter 6 - Flow Control
#-------------------------

puts 1 > 2
puts 1 < 2
puts ""

puts 5 >= 5
puts 5 <= 4
puts ""

puts 1 == 1
puts 2 != 1
puts ""

puts 'cat' < 'dog'
puts ""

# code below works, just do not want to input each time program is run
# puts 'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.'
# if name == 'Chris'
#   puts 'What a lovely name!'
# end
# puts ""

# code below works, just do not want to input each time program is run
# puts 'I am a fortune-teller.  Tell me your name:'
# name = gets.chomp
# if name == 'Chris'
#   puts 'I see great things in your future.'
# else
#   puts 'Your future is... Oh my!  Look at the time!'
#   puts 'I really have to go, sorry!'
# end
# puts ""

# code below works, just do not want to input each time program is run
# puts 'Hello, and welcome to 7th grade English.'
# puts 'My name is Mrs. Gabbard.  And your name is...?'
# name = gets.chomp

# if name == name.capitalize
#   puts 'Please take a seat, ' + name + '.'
# else
#   puts name + '?  You mean ' + name.capitalize + ', right?'
#   puts 'Don\'t you even know how to spell your name??'
#   reply = gets.chomp

#   if reply.downcase == 'yes'
#     puts 'Hmmph!  Well, sit down!'
#   else
#     puts 'GET OUT!!'
#   end
# end
# puts ""

# code below works, just do not want to input each time program is run
# command = ''

# while command != 'bye'
#   puts command
#   command = gets.chomp
# end

# puts 'Come again soon!'
# puts ""

# code below works, just do not want to input each time program is run
# puts 'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.'
# if name == 'Chris'
#   puts 'What a lovely name!'
# else
#   if name == 'Katy'
#     puts 'What a lovely name!'
#   end
# end
# puts ""

# code below works, just do not want to input each time program is run
# puts 'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.'
# if (name == 'Chris' or name == 'Katy')
#   puts 'What a lovely name!'
# end
# puts ""

iAmChris  = true
iAmPurple = false
iLikeFood = true
iEatRocks = false

puts (iAmChris  and iLikeFood)
puts (iLikeFood and iEatRocks)
puts (iAmPurple and iLikeFood)
puts (iAmPurple and iEatRocks)
puts
puts (iAmChris  or iLikeFood)
puts (iLikeFood or iEatRocks)
puts (iAmPurple or iLikeFood)
puts (iAmPurple or iEatRocks)
puts
puts (not iAmPurple)
puts (not iAmChris )
puts ""

# Chapter 7 - Arrays and Iterators
#---------------------------------

names = ['Ada', 'Belle', 'Chris']

puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3]  # This is out of range.
puts ""

languages = ['English', 'German', 'Ruby']

languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end

puts 'And let\'s hear it for C++!'
puts '...'

puts ""

3.times do
  puts 'Hip-Hip-Hooray!'
end
puts ""

foods = ['artichoke', 'brioche', 'caramel']

puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join('  :)  ') + '  8)'

200.times do
  puts []
end
puts ""

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length
puts ""

# Chapter 8 - Writing our Own Methods
#------------------------------------

# code below works, just do not want to input each time program is run
# puts 'Hello, and thank you for taking the time to'
# puts 'help me with this experiment.  My experiment'
# puts 'has to do with the way people feel about'
# puts 'Mexican food.  Just think about Mexican food'
# puts 'and try to answer every question honestly,'
# puts 'with either a "yes" or a "no".  My experiment'
# puts 'has nothing to do with bed-wetting.'
# puts

# # We ask these questions, but we ignore their answers.

# goodAnswer = false
# while (not goodAnswer)
#   puts 'Do you like eating tacos?'
#   answer = gets.chomp.downcase
#   if (answer == 'yes' or answer == 'no')
#     goodAnswer = true
#   else
#     puts 'Please answer "yes" or "no".'
#   end
# end

# goodAnswer = false
# while (not goodAnswer)
#   puts 'Do you like eating burritos?'
#   answer = gets.chomp.downcase
#   if (answer == 'yes' or answer == 'no')
#     goodAnswer = true
#   else
#     puts 'Please answer "yes" or "no".'
#   end
# end

# # We pay attention to *this* answer, though.
# goodAnswer = false
# while (not goodAnswer)
#   puts 'Do you wet the bed?'
#   answer = gets.chomp.downcase
#   if (answer == 'yes' or answer == 'no')
#     goodAnswer = true
#     if answer == 'yes'
#       wetsBed = true
#     else
#       wetsBed = false
#     end
#   else
#     puts 'Please answer "yes" or "no".'
#   end
# end

# goodAnswer = false
# while (not goodAnswer)
#   puts 'Do you like eating chimichangas?'
#   answer = gets.chomp.downcase
#   if (answer == 'yes' or answer == 'no')
#     goodAnswer = true
#   else
#     puts 'Please answer "yes" or "no".'
#   end
# end

# puts 'Just a few more questions...'

# goodAnswer = false
# while (not goodAnswer)
#   puts 'Do you like eating sopapillas?'
#   answer = gets.chomp.downcase
#   if (answer == 'yes' or answer == 'no')
#     goodAnswer = true
#   else
#     puts 'Please answer "yes" or "no".'
#   end
# end

# # Ask lots of other questions about Mexican food.

# puts
# puts 'DEBRIEFING:'
# puts 'Thank you for taking the time to help with'
# puts 'this experiment.  In fact, this experiment'
# puts 'has nothing to do with Mexican food.  It is'
# puts 'an experiment about bed-wetting.  The Mexican'
# puts 'food was just there to catch you off guard'
# puts 'in the hopes that you would answer more'
# puts 'honestly.  Thanks again.'
# puts
# puts wetsBed
# puts ""

def sayMoo
  puts 'mooooooo...'
end

sayMoo
sayMoo
puts 'coin-coin'
sayMoo
sayMoo
puts ""

def sayMoo numberOfMoos
  puts 'mooooooo...'*numberOfMoos
end

# code below produces errors
# sayMoo 3
# puts 'oink-oink'
# sayMoo  # This should give an error because the parameter is missing.
# puts ""

def doubleThis num
  numTimes2 = num*2
  puts num.to_s+' doubled is '+numTimes2.to_s
end

doubleThis 44
puts ""

# code below produces errors
# def doubleThis num
#   numTimes2 = num*2
#   puts num.to_s+' doubled is '+numTimes2.to_s
# end

# doubleThis 44
# puts numTimes2.to_s
# puts ""

def littlePest var
  var = nil
  puts 'HAHA!  I ruined your variable!'
end

var = 'You can\'t even touch my variable!'
littlePest var
puts var
puts ""

returnVal = puts 'This puts returned:'
puts returnVal
puts ""

# code below works, just do not want to input each time program is run
# def ask question
#   goodAnswer = false
#   while (not goodAnswer)
#     puts question
#     reply = gets.chomp.downcase

#     if (reply == 'yes' or reply == 'no')
#       goodAnswer = true
#       if reply == 'yes'
#         answer = true
#       else
#         answer = false
#       end
#     else
#       puts 'Please answer "yes" or "no".'
#     end
#   end

#   answer  # This is what we return (true or false).
# end

# puts 'Hello, and thank you for...'
# puts

# ask 'Do you like eating tacos?'      # We ignore this return value.
# ask 'Do you like eating burritos?'
# wetsBed = ask 'Do you wet the bed?'  # We save this return value.
# ask 'Do you like eating chimichangas?'
# ask 'Do you like eating sopapillas?'
# ask 'Do you like eating tamales?'
# puts 'Just a few more questions...'
# ask 'Do you like drinking horchata?'
# ask 'Do you like eating flautas?'

# puts
# puts 'DEBRIEFING:'
# puts 'Thank you for...'
# puts
# puts wetsBed
# puts ""

def englishNumber number
  # We only want numbers from 0-100.
  if number < 0
    return 'Please enter a number zero or greater.'
  end
  if number > 100
    return 'Please enter a number 100 or lesser.'
  end

  numString = ''  # This is the string we will return.

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)
  left  = number
  write = left/100          # How many hundreds left to write out?
  left  = left - write*100  # Subtract off those hundreds.

  if write > 0
    return 'one hundred'
  end

  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if write == 1  # Uh-oh...
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      if    left == 0
        numString = numString + 'ten'
      elsif left == 1
        numString = numString + 'eleven'
      elsif left == 2
        numString = numString + 'twelve'
      elsif left == 3
        numString = numString + 'thirteen'
      elsif left == 4
        numString = numString + 'fourteen'
      elsif left == 5
        numString = numString + 'fifteen'
      elsif left == 6
        numString = numString + 'sixteen'
      elsif left == 7
        numString = numString + 'seventeen'
      elsif left == 8
        numString = numString + 'eighteen'
      elsif left == 9
        numString = numString + 'nineteen'
      end
      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    elsif write == 2
      numString = numString + 'twenty'
    elsif write == 3
      numString = numString + 'thirty'
    elsif write == 4
      numString = numString + 'forty'
    elsif write == 5
      numString = numString + 'fifty'
    elsif write == 6
      numString = numString + 'sixty'
    elsif write == 7
      numString = numString + 'seventy'
    elsif write == 8
      numString = numString + 'eighty'
    elsif write == 9
      numString = numString + 'ninety'
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    if    write == 1
      numString = numString + 'one'
    elsif write == 2
      numString = numString + 'two'
    elsif write == 3
      numString = numString + 'three'
    elsif write == 4
      numString = numString + 'four'
    elsif write == 5
      numString = numString + 'five'
    elsif write == 6
      numString = numString + 'six'
    elsif write == 7
      numString = numString + 'seven'
    elsif write == 8
      numString = numString + 'eight'
    elsif write == 9
      numString = numString + 'nine'
    end
  end

  if numString == ''
    # The only way "numString" could be empty is if
    # "number" is 0.
    return 'zero'
  end

  # If we got this far, then we had a number somewhere
  # in between 0 and 100, so we need to return "numString".
  numString
end

puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts ""

def englishNumber number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  numString = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)
  left  = number
  write = left/100          # How many hundreds left to write out?
  left  = left - write*100  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'
    # That's called "recursion". So what did I just do?
    # I told this method to call itself, but with "write" instead of
    # "number". Remember that "write" is (at the moment) the number of
    # hundreds we have to write out. After we add "hundreds" to
    # "numString", we add the string ' hundred' after it.
    # So, for example, if we originally called englishNumber with
    # 1999 (so "number" = 1999), then at this point "write" would
    # be 19, and "left" would be 99. The laziest thing to do at this
    # point is to have englishNumber write out the 'nineteen' for us,
    # then we write out ' hundred', and then the rest of
    # englishNumber writes out 'ninety-nine'.

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    numString = numString + onesPlace[write-1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "numString"...
  numString
end

puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000000000000)
puts ""

# Chapter 9 - Classes
#--------------------

a = Array.new  + [12345]  # Array  addition.
b = String.new + 'hello'  # String addition.
c = Time.new

puts 'a = '+a.to_s
puts 'b = '+b.to_s
puts 'c = '+c.to_s
puts ""

time  = Time.new   # The moment I generated this web page.
time2 = time + 60  # One minute later.

puts time
puts time2
puts ""

puts Time.mktime(2000, 1, 1)          # Y2K.
puts Time.mktime(1975, 6, 14, 18, 25)  # When I was born.
puts ""

colorArray = []  # same as Array.new
colorHash  = {}  # same as Hash.new

colorArray[0]         = 'red'
colorArray[1]         = 'green'
colorArray[2]         = 'blue'
colorHash['strings']  = 'red'
colorHash['numbers']  = 'green'
colorHash['keywords'] = 'blue'

colorArray.each do |color|
  puts color
end
colorHash.each do |codeType, color|
  puts codeType + ':  ' + color
end
puts ""

weirdHash = Hash.new

weirdHash[12] = 'monkeys'
weirdHash[[]] = 'emptiness'
weirdHash[Time.new] = 'no time like the present'
puts ""

class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'fifty-eight'
    end

    english
  end
end

# I'd better test on a couple of numbers...
puts 5.to_eng
puts 58.to_eng
puts ""

class Die

  def roll
    1 + rand(6)
  end

end

# Let's make a couple of dice...
dice = [Die.new, Die.new]

# ...and roll them.
dice.each do |die|
  puts die.roll
end
puts ""

class Die

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

end

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
puts ""

class Die

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

end

# Since I'm not going to use this die again,
# I don't need to save it in a variable.
puts Die.new.showing
puts ""

class Die

  def initialize
    # I'll just roll the die, though we
    # could do something else if we wanted
    # to, like setting the die with 6 showing.
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

end

puts Die.new.showing
puts ""

# code below works, designed to end the program.

# class Dragon

#   def initialize name
#     @name = name
#     @asleep = false
#     @stuffInBelly     = 10  # He's full.
#     @stuffInIntestine =  0  # He doesn't need to go.

#     puts @name + ' is born.'
#   end

#   def feed
#     puts 'You feed ' + @name + '.'
#     @stuffInBelly = 10
#     passageOfTime
#   end

#   def walk
#     puts 'You walk ' + @name + '.'
#     @stuffInIntestine = 0
#     passageOfTime
#   end

#   def putToBed
#     puts 'You put ' + @name + ' to bed.'
#     @asleep = true
#     3.times do
#       if @asleep
#         passageOfTime
#       end
#       if @asleep
#         puts @name + ' snores, filling the room with smoke.'
#       end
#     end
#     if @asleep
#       @asleep = false
#       puts @name + ' wakes up slowly.'
#     end
#   end

#   def toss
#     puts 'You toss ' + @name + ' up into the air.'
#     puts 'He giggles, which singes your eyebrows.'
#     passageOfTime
#   end

#   def rock
#     puts 'You rock ' + @name + ' gently.'
#     @asleep = true
#     puts 'He briefly dozes off...'
#     passageOfTime
#     if @asleep
#       @asleep = false
#       puts '...but wakes when you stop.'
#     end
#   end

#   private

#   # "private" means that the methods defined here are
#   # methods internal to the object.  (You can feed
#   # your dragon, but you can't ask him if he's hungry.)

#   def hungry?
#     # Method names can end with "?".
#     # Usually, we only do this if the method
#     # returns true or false, like this:
#     @stuffInBelly <= 2
#   end

#   def poopy?
#     @stuffInIntestine >= 8
#   end

#   def passageOfTime
#     if @stuffInBelly > 0
#       # Move food from belly to intestine.
#       @stuffInBelly     = @stuffInBelly     - 1
#       @stuffInIntestine = @stuffInIntestine + 1
#     else  # Our dragon is starving!
#       if @asleep
#         @asleep = false
#         puts 'He wakes up suddenly!'
#       end
#       puts @name + ' is starving!  In desperation, he ate YOU!'
#       exit  # This quits the program.
#     end

#     if @stuffInIntestine >= 10
#       @stuffInIntestine = 0
#       puts 'Whoops!  ' + @name + ' had an accident...'
#     end

#     if hungry?
#       if @asleep
#         @asleep = false
#         puts 'He wakes up suddenly!'
#       end
#       puts @name + '\'s stomach grumbles...'
#     end

#     if poopy?
#       if @asleep
#         @asleep = false
#         puts 'He wakes up suddenly!'
#       end
#       puts @name + ' does the potty dance...'
#     end
#   end

# end

# pet = Dragon.new 'Norbert'
# pet.feed
# pet.toss
# pet.walk
# pet.putToBed
# pet.rock
# pet.putToBed
# pet.putToBed
# pet.putToBed
# pet.putToBed
# puts ""

# Chapter 10 - Blocks and Procs
#------------------------------

toast = Proc.new do
  puts 'Cheers!'
end

toast.call
toast.call
toast.call
puts ""

doYouLike = Proc.new do |aGoodThing|
  puts 'I *really* like '+aGoodThing+'!'
end

doYouLike.call 'chocolate'
doYouLike.call 'ruby'
puts ""

def doSelfImportantly someProc
  puts 'Everybody just HOLD ON!  I have something to do...'
  someProc.call
  puts 'Ok everyone, I\'m done.  Go on with what you were doing.'
end

sayHello = Proc.new do
  puts 'hello'
end

sayGoodbye = Proc.new do
  puts 'goodbye'
end

doSelfImportantly sayHello
doSelfImportantly sayGoodbye
puts ""

def maybeDo someProc
  if rand(2) == 0
    someProc.call
  end
end

def twiceDo someProc
  someProc.call
  someProc.call
end

wink = Proc.new do
  puts '<wink>'
end

glance = Proc.new do
  puts '<glance>'
end

maybeDo wink
maybeDo glance
twiceDo wink
twiceDo glance
puts ""

def doUntilFalse firstInput, someProc
  input  = firstInput
  output = firstInput

  while output
    input  = output
    output = someProc.call input
  end

  input
end

buildArrayOfSquares = Proc.new do |array|
  lastNumber = array.last
  if lastNumber <= 0
    false
  else
    array.pop                         # Take off the last number...
    array.push lastNumber*lastNumber  # ...and replace it with its square...
    array.push lastNumber-1           # ...followed by the next smaller number.
  end
end

alwaysFalse = Proc.new do |justIgnoreMe|
  false
end

puts doUntilFalse([5], buildArrayOfSquares).inspect
puts doUntilFalse('I\'m writing this at 3:00 am; someone knock me out!', alwaysFalse)
puts ""

def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

squareIt = Proc.new do |x|
  x * x
end

doubleIt = Proc.new do |x|
  x + x
end

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt

puts doubleThenSquare.call(5)
puts squareThenDouble.call(5)
puts ""

class Array
  def eachEven(&wasABlock_nowAProc)
    # We start with "true" because arrays start with 0, which is even.
    isEven = true

    self.each do |object|
      if isEven
        wasABlock_nowAProc.call object
      end

      isEven = (not isEven)  # Toggle from even to odd, or odd to even.
    end
  end
end

['apple', 'bad apple', 'cherry', 'durian'].eachEven do |fruit|
  puts 'Yum!  I just love '+fruit+' pies, don\'t you?'
end

# Remember, we are getting the even-numbered elements
# of the array, all of which happen to be odd numbers,
# just because I like to cause problems like that.
[1, 2, 3, 4, 5].eachEven do |oddBall|
  puts oddBall.to_s+' is NOT an even number!'
end
puts ""

def profile descriptionOfBlock, &block
  startTime = Time.now

  block.call

  duration = Time.now - startTime

  puts descriptionOfBlock+':  '+duration.to_s+' seconds'
end

profile '25000 doublings' do
  number = 1

  25000.times do
    number = number + number
  end

  # Show the number of digits in this HUGE number.
  puts number.to_s.length.to_s+' digits'
end

profile 'count to a million' do
  number = 0

  1000000.times do
    number = number + 1
  end
end
puts ""

