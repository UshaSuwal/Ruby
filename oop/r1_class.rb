# Objects are real world entity
# class are bluprints that includes attributes and method 

# Class Cat
#     attributes:
#     color
#     sound

#     methods:
#     jump
#     sleep

# instances of class can be different types of cat

class Dog
end

henny=Dog.new     # henny is object
puts henny.inspect    # to see details of object

class Cat
    def initialize(name,breed)         # constructor
        @name=name                     # @name and @breeb -> instance variable
        @breed=breed
        puts "it is initialized"
    end
end
pooh=Cat.new("Meow","ragdoll")
puts pooh.inspect


# Whenever a new object is created, Ruby looks for a method called initialize 
# and runs the method. In other words, when the new method is triggered, Ruby looks 
# for a method called initialize in the class and executes it.