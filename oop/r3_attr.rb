class Cat
    def initialize(name, age)
      @name = name
      @age = age
    end
end
  
cat = Cat.new("Cathy", 4)
puts cat.inspect
# output: #<Cat:0x00007f3375be4650 @name="Cathy", @age=4>


#---------------------------------------------------------------------------------------------------

# BUT to change the value of name and age for same instance "cat" then we need setter
class Dog
    def initialize(name,age)
        @name=name
        @age=age
    end

    # Setter---------------
    def name=(dogName)                    
        @name=dogName
    end
    def age=(dogAge)
        @age=dogAge
    end

    # Getter---------------
    def name                        
        @name
    end
    def age
        @age
    end
end
bulldog=Dog.new("Henny",4)
puts bulldog.inspect

# to change instance variable value using SETTER
bulldog.name="Docky"
bulldog.age="6"
puts bulldog.inspect

# to read instance variable using GETTER
puts "#{bulldog.name} is #{bulldog.age} years old"

#-----------------------------------------------------------------------------------------------------



# it is difficult to set and get attribute if there is alot of attributes. SO
class Bird
    attr_accessor :name,:age      # combination of both attr_writer and attr_reader
    # attr_writer=:name,:age
    # attr_reader=:name,:age
    def initialize(name,age)
        @name=name
        @age=age
    end
end

#-------------------------------------------------------------------------------------------------------



######## Assignment
# Add both a getter method and setter method to each of the attributes in the Car class
#  that you wrote in the last assignment

class Car
    attr_accessor :color,:model
    # attr_reader=:color,:model
    def initialize(color,model)
        @color=color
        @model=model
    end
end

car1=Car.new("Red","Toyota")
puts car1.inspect

car1.color="Blue"              # setting
car1.model="Lamborghini"
puts car1.inspect

puts car1.color, car1.model     # getting