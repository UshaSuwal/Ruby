#self refers to the CURRENT OBJECT

class Cat
    def test
        puts "At the instance level, self is #{self}"
    end

    def self.test     # class method
        puts "At the Class level, self is #{self}"
    end
end

Cat.test    # class level

cat1=Cat.new   # instance level
cat1.test
puts cat1.inspect


#-------------------------------------------------------------------

class Pencil
    def self.disappear
        puts "all pencil disappear"
    end

    def write
        puts "writing..."
    end
end
a=Pencil.new
puts a.disappear

puts Pencil.disappear


class Pen
    attr_accessor :color
    def initialize
        @color="blue"
    end

    def write
        puts "#{self.color} pen is writing"
    end
end
a=Pen.new
puts a.write
a.color="Red"
puts a.write

b=Pen.new
b.color="Purple"
puts b.write
