arr=[1,2,3,4,5]

### 1 each method 
# to iterate in array
arr.each { |i| 
    # i is block argument and it is only valid throughout block
    puts "current number is #{i}"
}

# arr.each do |i| 
#      i is block argument and it is only valid throughout block
#     puts i
# end

# For each item (i) in the numbers array, print out the item (i).


### 2 while loop

i=0
while(i<10) do
    puts "current item using while: #{i}"
    i+=1
end


###3 times loop

5.times do |i|     # i start from 0  and increase upto <5 defaultly
    puts "Current item using times: #{i}"
end


###4 upto loop

1.upto(5) do |i|
    puts "Number using upto: #{i}"   # 1 to 5 nai janxa
end


###5 downto loop
5.downto(1) do |i|
    puts "Number using downto: #{i}"    # 5 to 1 reverse
end


## Coding Challenge
# Write a program the does the following:

# Ask the user to input a sentence
# Count the number of times each word in the sentence appears in the sentence
# The results should be case insensitive

# For example, "Pizza" and "pizza" should be counted as the same word

puts "Enter a sentence"
sentence = gets.chomp 
sentence= sentence.downcase
puts sentence
count=0
containArr=[]

arr= sentence.split(" ")
puts arr.class, arr

arr.each do |i|
    arr.each do |j|
        if i==j and !(containArr.include?(i))
            count+=1
        end
    end
    if !(containArr.include?(i))
        containArr.push(i)
        puts "#{i} appears #{count} times"
    end
    count=0
end


