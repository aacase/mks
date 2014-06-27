samplearray=["pig", "in", "shit"]
puts "If I get into makersquare, I'll be happier than a #{samplearray}"
puts "However, if I don't get in, I'll just feel like #{samplearray[2]}"
samplearray.push("moosecock")
puts samplearray[3]


groceries = ["milk", "eggs", "broccoli"]

groceries.each{|x| puts "I need to buy #{x}"}

samplehash={:godzilla => "Rules"}
puts samplehash[:godzilla]
samplehash[:mothra] = "Sucks cock by choice"
puts samplehash

cost_of_groceries = {
  "milk" => 3.50,
  "egg" => 1.50,
  "broccolli" => 0.75
}

cost_of_groceries.each{|key, value|
if value <2 ;puts "Buy #{key}! dat shit be on sale for less than $2!"
else puts "Nah nigga, #{key} be too spensive. yo broke as shit"
end}

# Make the following code functional by building a Car class

class Car
	attr_reader :color, :repaint_count
	def initialize(color, repaint_count=0)
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
puts "Yo son. That #{c.color} on your ride be lookin fly as shit."