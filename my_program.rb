# Ruby in 100 minutes

class Sample
	def hello
		puts "Hello, World!"
	end
end

s = Sample.new
s.hello
puts ""

5.times do |i|
	puts "#{i}: Hello, World!"
end
puts ""

def water_status(minutes)
  if minutes < 7
    puts "The water is not boiling yet."
  elsif minutes == 7
    puts "It's just barely boiling"
  elsif minutes == 8
    puts "It's boiling!"
  else
    puts "Hot! Hot! Hot!"
  end
end

water_status(5)
water_status(7)
water_status(8)
water_status(9)
puts ""

class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction
    puts "Hi, I'm #{first_name}!"
  end
end

frank = Student.new
frank.first_name = "Frank"
frank.introduction
puts ""

class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}!"
  end
end

frank = Student.new
frank.first_name = "Frank"
frank.introduction('Katrina')
puts ""

class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}!"
  end

  def favorite_number
    7
  end
end

frank = Student.new
frank.first_name = "Frank"
puts "Frank's favorite number is #{frank.favorite_number}."
