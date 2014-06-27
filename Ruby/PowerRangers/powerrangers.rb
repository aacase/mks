module Punch #this module is to be included in the powerranger and evil ninja class

  def punch(person, strength)
    if strength <= 5
      person.scream
      person.run
    elsif strength > 5
      person.scream
      person.run
      @caffeine_level -= 20
      if caffeine_level > 20 ;puts "#{@name} punched #{person.name} so hard he somersaulted!"
    	else puts "#{@name} punched #{person.name} so hard he somersaulted! #{@name} looks tired. Maybe drink some coffee?"
    	end	
    end
  end
end


class Person
	attr_accessor :name
	attr_accessor :caffeine_level
	
	def initialize(name, caffeine_level=50)
		@name = name
		@caffeine_level=caffeine_level
		
	end



	def status 
		puts "#{name} is currently hovering at a caffeine level around #{caffeine_level}"
		if caffeine_level < 20
			puts "wow! #{name} must be tired! Try drinking some coffee!"
		else
			puts "#{name} is adequately caffeinated!"
		end
	end
	def run
		puts "#{name} ran away"
	end

	def scream
		puts "#{name} let out a wussy scream"
	end

	def drink_coffee
		@caffeine_level+=50
		
		puts "#{name} drank a cup of sweet sweet coffee."
		puts "#{name}'s Current Caffeine Level is #{caffeine_level}"
	end
end

class PowerRanger < Person
	include Punch
	attr_accessor :strength
	attr_accessor :color
	def initialize (name, caffeine_level, strength, color)
		super(name, caffeine_level)
		@strength=strength 
		@color = color

	end

	def use_megazord(person)
		
		@strength=strength
		strength = 5000
		person.scream
		puts "#{name}, the #{color} Ranger, hopped in their MegaZord and destroyed #{person.name}!"
	end
	
	def rest
		@caffeine_level+= 20
		puts "#{name} rested and their caffeine level rose to #{caffeine_level}"
	end
end

class EvilNinja < Person
	include Punch
	attr_accessor :strength
	attr_accessor :evilness
	
	def initialize(name, caffeine_level, strength, evilness)
    super(name, caffeine_level)
    @strength=strength
    @name=name
    @evilness=evilness #included so cause_mayhem puts out the evilness level
	end

	def cause_mayhem(person)
		person.caffeine_level=0
		puts "#{name}, who happens to be #{@evilness} used Mayhem and caused #{person.name} to faint!"
	end
end




def fight_scene
	ben = Person.new("Ben")
	jeremy = Person.new("jeremy")
	redranger = PowerRanger.new("Jason", 50, 50, "Red")
	whiteranger = PowerRanger.new("Tommy", 50, 50, "Green")
	lordzed = EvilNinja.new("Lord Zed", 50, 50, "super evil")
	ritarepulsa = EvilNinja.new("Rita Repulsa", 50, 50, "super evil")

	ritarepulsa.cause_mayhem(jeremy)
	
	redranger.punch(ben, 20)
	redranger.status
	redranger.punch(ben, 20)
	redranger.status
	ben.scream
	ben.drink_coffee
	lordzed.cause_mayhem(redranger)
	whiteranger.use_megazord(lordzed)
end

