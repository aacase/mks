class Car
    attr_reader :color, :repaint_count
    def initialize(color, repaint_count=0)
       #this tells the class what arguments to take
        @color=color
        @repaint_count=repaint_count
    end
    def paint(color)
        @repaint_count+=1 #this tells the counter to increase by 1 when ran
        paint=@color #this equates paint to the new color of thee car
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
