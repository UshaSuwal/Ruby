# array are objects
# declare array
arr=[]
emptyArray=Array.new

name=['Usha','Rubin', 'Nisha']
puts name[0],name[1],name[2]     # index accessing

# accessing array element by first and last method
puts "First name is #{name.first} and last name is #{name.last}}"

# length 
puts "Length of array:"
puts name.length
puts name.count
puts name.size

#Array method

# 1 push
name.push('John')   #add John in last
name<<('Cena')
puts "After adding John and Cena: #{name}"

#2 pop
popped=name.pop()
puts "Popped element: #{popped}"
puts "After poping, array is: #{name}"

#3 include
puts name.include?("Mark")

#4 index
puts "Index of Cena: #{name.index("Rubin")}"

#5 reverse
reversed= name.reverse
puts " Reverse of array: #{reversed}"

#6 sample
puts "Sample of array is #{name.sample}"

#7 uniq
place=['ktm', 'ktm', 'ktm', 1,1,1, 'bkt']    # every element is not unique here
puts "Unique element: #{place.uniq}"

#8 join
joined=place.join(" ")
puts "after joining array element by space: #{joined}"

########### Array can contain multiple data types#######

details=['Usha',23,23.5, true, ['chicken','buff'], {color:'red'}]
puts "Array with various datatypes: #{details}"
puts details[5].class    # hash



########## Multi-dimentional Array#################
multiDimentional=[['Usha',23],['Rubin',17],['Nisha',1]]
puts "Multi dimensional array: #{multiDimentional}"
puts multiDimentional[1]
puts multiDimentional[2][0]



############# simple quote generate

quote=Array.new

puts "There is #{quote.length} quote"

q="Life is beautiful"
puts "Adding quote #{q}..."
quote.push(q)
puts "There is #{quote.length} quote"

q="Stay Healthy"
puts "Adding quote #{q}..."
quote.push(q)
puts "There is #{quote.length} quote"

q="Love is beautiful"
puts "Adding quote #{q}..."
quote.push(q)
puts "There is #{quote.length} quote"

puts "Generating random quote..."
puts quote.sample

puts quote[1+1]
