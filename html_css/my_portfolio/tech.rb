# this is the code for secton 2 and section 3 of the sample interview
groceries = ["milk", "eggs", "broccoli"]
# create an array
groceries.each {|x| puts "I need #{x}"}
#print out the items in the array on each line
puts groceries[2]
#display the indexed value of the array
groceries.push("steak")
#add an element to the array
puts groceries
# print out the array again to see that the element was added

#the following code applies to section 4
#The next line creates the hash called "Grades"
grades = {}
#The following line creates a key called ":aaron" with a value of "A+"
grades[:aaron] = "A+"
#the next line shows how to access a value in a hash, given the key
puts grades[:aaron]
#below applies to section 5
cost_of_groceries = {
  "milk" => 3.50,
  "egg" => 1.50,
  "broccolli" => 0.75
}
#the next lines shows how to print out only the values that meet parameters
cost_of_groceries.each{|key, value|
 if value <= 2 ; puts "#{key} is less than $2"
 else puts "#{key} is more than $2"
 end }

#the following applies to section 6
class Car
    attr_reader :color, :repaint_count
    def initialize(color, repaint_count=0)
       #this tells the class what arguments to take
        @color=color
        @repaint_count=repaint_count

    end
    def paint(color)
        @repaint_count+=1 #this tells the counter to increase by 1 when ran
        *-
        @color=color #tells color to change on initialize method.
    end
   
end

c=Car.new("blue")
puts c.color
puts c.repaint_count
c.paint("red")
puts c.color
c.paint("green")
puts c.color
puts c.repaint_count
