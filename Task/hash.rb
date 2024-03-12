# input "Ram Shyam Hari Ram"
# output=>
# Ram:2
# Shyam:1
# Hari:1

puts "enter a sentence"
sentence=gets.chomp
arr=sentence.downcase.split(" ")
puts arr

name=Hash.new(0)

arr.each do |i|
    name[i]+=1
end

puts name


name.each do |nameKey, nameValue| 
    puts "#{nameKey}:#{nameValue}" 
end




