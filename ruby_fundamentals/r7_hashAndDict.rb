# key value pair
h={}
has=Hash.new
has={
    'name'=>'usha',
    'roll'=>23,
    1=>'this is 1',
    true=> 'this is boolean'
}

#access hash value
puts "hash value:"
puts has['name'],has['roll'],has[1],has[true]

#assign value
has['name']='Rubin'
puts "changed usha by rubin: #{has}"

# add new element
has['place']='bkt'
puts "After adding place: #{has}"

#manipulate values
has['roll']+=2
puts "first roll is 23 and after re assigning it: #{has['roll']}"



################### Dictionary ###############
dict={
    'meter'=>{
        'ktm'=>30,
        'bkt'=>45
    },
    'kiloMeter'=>{
        'pkr'=>3,
        'llt'=>6
    }
}
puts "Accessing dictionary"
puts dict['kiloMeter']['llt']


######## Create a hash consisting of 5 countries
# For each country, store the population, GDP per capita, and capital

dict={
    'Nepal'=>{
        'population'=>10000000,
        'gdp'=>3.5,
        'capital'=>40000000
    },
    'America'=>{
        'population'=>70000000,
        'gdp'=>5.5,
        'capital'=>600000000
    },
    'England'=>{
        'population'=>8000000,
        'gdp'=>3,
        'capital'=>10000000
    },
    'France'=>{
        'population'=>500000,
        'gdp'=>1.5,
        'capital'=>600000
    },
    'Brazil'=>{
        'population'=>70000000,
        'gdp'=>3.9,
        'capital'=>30000000
    }
}

puts "Population of Brazil: #{dict['Brazil']['population']}"