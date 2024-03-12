# Comparision operator:
# ==  if a is equal to b
# >   greater than
# >=  greater than or equal to
# <   less than
# <=  less than or equal to
# !=  not equal to

# Logical operator
# && AND   || OR    ! NOT


## if statement
def checkEven(n)
    if n%2==0
        puts "#{n} is even"
    elsif n%3==0
        puts "#{n} is divisible by 3"
    end
end
puts "Enter a number to check whether it is even or divisible by 3"
number=gets.to_i
checkEven(number)




##### Challenge
# Write a method called is_divisible_by_7_or_11? that returns true if the number passed in as an argument 
# is divisible by 7 or 11, and false if the number passed in is not divisible by 7 nor 11.

def is_divisible_by_7_or_11?(n)
    if n%7==0 || n%11==0
        return true
    else
        return false
    end
end
puts "Enter a number to check whether it is divisible by 7 or 11 or not"
num=gets.to_i
puts is_divisible_by_7_or_11?(num)


