# instance variable can be used throughout the class but the variable without @ can 
# only be used throughout its method.


class Person
    def initialize(name,age)
        @name=name       # instance variable
        age=age          # local variable
    end
    def displayName
        return @name          #  @name is instance variable. so it can be used throughout the class
    end
    # def displayAge        it display error because age is local variable and can be used throughout initialize block only
    #     return age
    # end
end

man=Person.new("Rubin",21)
puts man.displayName
# puts man.displayAge


class Dog
    def initialize(name,breed)
        @name=name
        @breed=breed
    end
end

henny=Dog.new("Henny","Golden Retriever")
pooh=Dog.new("Pooh","Bulldog")

puts henny.inspect
puts pooh.inspect


#########  Assignment
# Write a Car class with the following attributes:

# Brand
# Color
# Maximum Passenger
# Max Speed

class Car
    def initialize(brand, color, max_passengers, max_speed)
      @brand = brand
      @color = color
      @max_passengers = max_passengers
      @max_speed = max_speed
    end
  
    def display_info
      puts "Brand: #{@brand}"
      puts "Color: #{@color}"
      puts "Maximum Passengers: #{@max_passengers}"
      puts "Maximum Speed: #{@max_speed} km/h"
    end
  end
  
  my_car = Car.new("Toyota", "Blue", 5, 180)
  my_car.display_info
  
    
