class Cat
    @@count=0     # class variable.  -> can be used by the entire class, but aren't specific to the instance of the class.
    def initialize(name,age)
        @name=name
        @age=age
        @@count+=1     
    end


    # Instance Methods
    def walk
        puts "#{@name} Cat is walking"
    end

    def jump
        puts "#{@name} Cat is jumping"
    end

    def run
        puts "#{@name} Cat is running"
    end

    # Class Method    ->work for the class, and not for instances of classes.
    def self.count
        return @@count
    end
end

cat1=Cat.new("krima",3)
cat1.walk
cat1.jump
cat1.run

cat2=Cat.new("Rubin",5)

# acces class method by using class itself and not by instance or object
puts "Total number of cat(object)= #{Cat.count}"
