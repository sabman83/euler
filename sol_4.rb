#Find largest palindrome obtained by mulutplying two 3-digit numbers

require '/Users/skolman/euler/utils.rb'
require 'debugger'  

MAX = 999 * 999 #998001
FIRST = 997799
def find_largest_palindrome
  #start with largest number possible
  #then work your way from inside to outside
  prime_numbers = prime_numbers_below(999)  
  factors = prime_numbers.find_all { |num| 999 % num ==0 }
  debugger
  factors
end

find_largest_palindrome
