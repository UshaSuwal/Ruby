puts "10 times 3.14 is #{10 * 3.14}"
# puts '10 times 3.14 is #{10 * 3.14}"


#strung Methods:

# Upper case
puts "This is uppercase string".upcase

#Lower case
puts "This is lowercase STRING ".downcase

#Length
puts "This is string length".length

#capitalize
puts "this is string to capitalize first letter".capitalize

#reverse
puts "i will reverse this".reverse

#include
puts "i will check if 'usha' is included in string".include?("usha")

#split
puts "It will be splited and will be stored in an array".split(" ")

s="i will split this by i".split("i")
puts s
puts s.class

#concat
puts "i like apple and".concat(" banana")

# String to Integer
a="10".to_i
puts a.class

#String to float
a="20".to_f
puts a.class

# prefix delete
puts "hello".delete_prefix('he')


#suffix delete
puts "hello".delete_suffix!("llo")


# puts \"this is a string\".include?(\"ri\") 