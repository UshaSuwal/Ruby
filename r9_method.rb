# start with def and end with end

def message(name)
    puts "Hello #{name}!"
end

puts "Enter name"
name=gets.chomp
message(name)    #calling or invoking method


def birthday(n,a)
    puts "Happy Birthday #{n}. You have turned #{a}!!"
end

puts "Enter name for wish"
name=gets.chomp
puts "Enter age"
age=gets.chomp.to_i
birthday(name,age)