# prints hello to the screen with a linebreak
puts "hello"

# prints hello without a linebreak
print"hey "
print"there. \n"


# *******************************************************
                  # NUMBERS
# *******************************************************
# basic numbers and number functions

# addition
puts 4+7

# is the number even
puts 32.even?

# prints out methods the number has
print "Number Mathods: " 
print 37.methods
puts
puts
puts
puts

# prints the digits individually from 1->10->100->1000 order
print 12673.digits
puts

# *******************************************************
                  # STRINGS
# *******************************************************
# basic strings and string functions

# basic string concatination
puts "This is" + " concatinatino"

# strings can be multiplied to repeat
puts "4 Times Fast, " * 4

# prints ruby string methods
print "String Methods :"
print "this is a string".methods
puts
puts
puts
puts

# *******************************************************
                  # ARRAYS
# *******************************************************
# basic arrays and array functions
# 0 indexed
# create an array 
the_array = [1,5,6,"nineteen"]
print the_array
# updated the array by adding to the end (push)
the_array << 20

puts 
print the_array
puts

# prints ruby array methods
print "Array Methods: "
print the_array.methods
puts
puts
puts
puts

# *******************************************************
                  # SYMBOLS
# *******************************************************
# basic symbols and symbol functions
# memory effeciant
# Start with semicolons
# prints seven as symbol
puts :seven
print "Symbol methods: "
print :seven.methods
puts
puts
puts
puts

# *******************************************************
                  # HASHES
# *******************************************************
# basic hashes and hash functions
# KVP Key:Value

# creates a new hash
info = {
  # symbol for the key and => for value assignment
  :name => "Dvontre",
  :email => "dc@host.com"
}
# print the full hash
puts info
# print just the email
puts info[:email]
print "Hash Methods: "
print info.methods
puts
puts
puts
puts

# *******************************************************
                  # METHODS
# *******************************************************

#  define a method
def hello
  # method body
  puts "Hello From the method"
# ends the method
end

# calls the hello method
hello
puts
puts
puts

# *******************************************************
                  # CONDITIONALS
# *******************************************************

age = 24
# only runs if true 
if age < 25
  # do stuff
  puts "Youve got time"
# end if
end

# runs unless false
unless age > 30
  puts "youre young"
end

if age < 10 
  put "Youre a baby"
# elseif other if block
elsif age < 20
  puts "youre vibrant"
# if other conditions are not met
else
  puts "sorry grandpa"
end
puts
puts
puts
# *******************************************************
                  # ITERATION
# *******************************************************
# loops over a collection with .each

nums = [1,2,3,4,5]
# | X | Pipes let you save current element as a variable
nums.each do |n|
  # loop through each number and print the number multiplied by 5
  puts n*5
end
