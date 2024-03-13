puts "Enter a number upto which you want to see"
num= gets.to_i
arr=[]
1.upto(num) do |i|
    if i%3==0
        if i%5==0
            arr<<"FooBar"
        else
            arr<<"Foo"
        end
    elsif i%5==0
        arr<<"Bar"
    else
        arr<<i
    end
    
end

puts "FooBar Numbers:"
puts arr
            