class Car
	@@count = 0
	attr_accessor :name, :fuelleft, :speed
	def initialize(name, fuelleft, speed)
		@name = name
		@fuelleft = fuelleft
		@speed = speed
		@@count += 1
	end

	def self.get_count
		return @@count
	end

	def print
		p "name: #{@name}"
		p "fuel left: #{@fuelleft}"
		p "speed: #{@speed}"
	end

	def get_name
		return "#{@name}"
	end

end

def addCar (list)
	p "name your car: "
	name = gets.chomp
	p "fuel left: "
	fuelleft = gets.chomp.to_i 
	if (fuelleft == 0)
		fuelleft = 100
	end
	p "speed: "
	speed = gets.chomp.to_i
	if (speed == 0)
		speed = 100
	end
	car = Car.new(name, fuelleft, speed)
	list.push(car)
end



def printCarNames(list)
	c = 1
	list.each do |car|
		s = c.to_s
		s += " "
		s += car.get_name
		p s
		c += 1
	end
end

def sort_list (list)
	list.sort{|a, b| a.name <=> b.name}
end

garage = []

quit = false

p "Welcome to the garage!"
while (!quit)
	p "1) add a car into the garage"
	p "2) remove a car from the garage"
	p "3) view a car in the garage"
	p "4) sort the cars in the garage"
	p "5) leave the garage"
	answer = gets.chomp.to_i

	if(answer == 1)
		garage = addCar(garage)
	elsif (answer == 2)
		p "which car?"
		printCarNames(garage)
		answer = gets.chomp.to_i
		garage.delete_at(answer-1) rescue puts "wrong input"
	elsif (answer == 3)
		p "which car?"
		printCarNames(garage)
		answer = gets.chomp.to_i
		garage[answer-1].print rescue puts "wrong input"
	elsif (answer == 4)
		garage = sort_list(garage)
	else 
		quit = true
		p "Have a nice day!"
	end
end
