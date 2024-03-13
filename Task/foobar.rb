puts "Enter a number upto which you want to see"
num= gets.to_i
1.upto(num) do |i|
    if i%3==0 && i%5==0
        puts "FooBar"
    elsif i%3==0
        puts "Foo"
    elsif i%5==0
        puts "Bar"
    else
        puts i
    end
    
end


            