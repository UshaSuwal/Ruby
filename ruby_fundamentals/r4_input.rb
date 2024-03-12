puts "Enter your name"
name= gets  # default string
# name = (gets).to_i -> string to integer
puts name.class
puts "hello #{name}"

puts "enter your friend name"
friend=gets.chomp
puts "Hello #{name}'s friend #{friend}.Nice to meet you"

# chomp dont cause line break

