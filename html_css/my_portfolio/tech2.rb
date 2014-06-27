grocerie= []

grocerie.push("x")
puts grocerie[0]
puts grocerie

groceries = ["milk", "eggs", "broccoli"]
groceries.each{|x| puts "I need to buy #{x}"}

samplehash={}
samplehash[:godzilla]= "Awesome!"
puts samplehash[:godzilla]
samplehash[:mothra]="sucks!"
puts samplehash

cost_of_groceries = {
  "milk" => 3.50,
  "egg" => 1.50,
  "broccolli" => 0.75
}
cost_of_groceries.each{|key, value|
	if value > 2 ; puts "#{key} is more than $2"
	else puts "#{key} is less than $2"
	end
}

class Car
	attr_reader :color, :repaint_count
	def initialize (color, repaint_count=0)
		@color=color
		@repaint_count=repaint_count
	end

	def paint(color)
		@color=color
		@repaint_count+=1
	end
end




c = Car.new("blue")
puts c.color # blue
puts c.repaint_count # 0
c.paint("red")
c.paint("green")
puts c.repaint_count # 2
puts c.color # green
