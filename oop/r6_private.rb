#Private methods are methods that cannot be called from outside of the class.
# every thing BELOWWWWW Private is private

# Private methods are useful because they can hide some methods that should be hidden 
# from the outside world. egs age should be public but calculating age can be private

# abstraction--Encapsulation
# Private methods allow developers to hide the implementation of methods (encapsulation)
class Cat
    def initialize
    end
    def test_public
        puts "it is public"
    end

    private
    # everything below this is private
    def test_private
        puts "this is private"
    end
end

cat1=Cat.new
puts cat1.test_public        # it will work

# puts cat1.test_private         it wont work

# public methods inside a class make up the public interface, 
# and the private methods inside a class make up the private interface.

class LuckyNumber
    def initialize(name)
        @name=name
    end
    def displayLuckyNum
        puts "The Lucky number for #{@name} is #{creatLuckyNum()} "
    end
    
    private
    def creatLuckyNum                        #nprivate method
        return (@name.length * 15 / 0.3 + 5).round
    end
end

puts "Enter your name to generate lucky number"
name=gets.chomp
test=LuckyNumber.new(name)
test.displayLuckyNum



