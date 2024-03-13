# All Ruby Objects inherit from BasicObject(class)
# to check
# irb
# String.superclass     ->Object    
# Object.superclass     ->BasicObject

# class Truck
#     def speed_up
#         puts "speeding up"
#     end
#     def slow
#         puts "slowing down"
#     end
#     def type
#         puts "It is Truck"
#     end
# end
# class Bus
#     def speed_up
#         puts "speeding up"
#     end
#     def slow
#         puts "slowing down"
#     end
#     def type
#         puts "It is Truck"
#     end
# end

# Here it violates DRY principle as speed_up and slow function is repeated. So we need Inheritance

class Vehicle
    def speed_up
        puts "speeding up"
    end
    def slow
        puts "slowing up"
    end
    def type
        puts "It is vehicle"
    end
end
class Truck<Vehicle
    def type
        puts "It is Truck"      # it override the type function 
    end
end
class Bus<Vehicle
    def speed_up
        puts "Bus is speeding up"
    end
end

vehicle=Vehicle.new
truck=Truck.new
bus=Bus.new

truck.type     # type is define in Truck itself as well as in Parent class Vehicle.But first it search in Truck and it it finds then it is runned. But if it is not found in Truck then it search in Vehicle
truck.speed_up
truck.slow

bus.type    # here it search type in Parent class because it is not available in Bus class
bus.speed_up
bus.slow

puts "Superclass of Bus class is : #{Bus.superclass}"


