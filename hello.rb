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
