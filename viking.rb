class Person
	MAX_HEALTH = 120

	def initialize(name, age, health, strength)
		# set up your new viking however you want to
		@name = name
		@age = age
		@health = health
		@strength = strength
	end

	def heal
		self.health += 1 unless self.health + 1 > MAX_HEALTH
	end
end

class Viking < Person
	# put your methods and variables here
	attr_accessor :name, :age, :health, :strength

	def initialize(name, age, health, strength)
		# set up your new viking however you want to
		super(name, age, health, strength)
		#@weapon = weapon
	end

	def health
		@health
	end

	def health=(new_health)
		@health = new_health
	end

	def shout(str)
		puts str
	end

	def self.create_warrior(name)
		age = rand * 20 + 15
		health = [age * 5, 120].min
		strength = [age / 2, 10].min
		Viking.new(name, age, health, strength)
	end

	def self.random_name
		["Erik", "Lars", "Leif"].sample
	end

	def self.silver_to_gold(silver_pieces)
		silver_pieces / 10
	end

	class << self
		def gold_to_silver(gold_pieces)
			gold_pieces * 10
		end
	end

	def heal
		#self.health = [self.health + 2, MAX_HEALTH].min
		2.times{super}
		puts "Ready for battle!"
	end

	def attack(enemy)
		#code to fight
		if enemy.dead
			puts "#{enemy.name} is already dead!"
			return false
		end
		damage = (rand * 10 +10).round(0)
		enemy.take_damage(damage)
	end

	def dead
		return dead
	end

	protected
		def take_damage(damage)
			self.health -= damage
			puts "Ouch! #{self.name} took #{damage} damage and has #{self.health} health left"
			die is @health <= 0
		end

	private
		def die
			puts "#{self.name} has been killed :("
			self.dead = true
		end

end

#oleg = Viking.new("Oleg", 19, 100, 8)
sten = Viking.create_warrior("Sten")
#warrior1 = Viking.create_warrior(Viking.random_name)
oleg = Viking.create_warrior("Oleg")
10.times {oleg.attack(sten)}

