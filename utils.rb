require 'debugger'

def prime_numbers_below max
  prime_numbers = [2]
  curr =  3
  while prime_numbers.last <= max
    prime_numbers.push curr unless prime_numbers.find{|num| curr % num ==0}
    curr += 1
  end
  prime_numbers
end

def is_prime? num
  factors  = prime_numbers_below Math.sqrt(num)
  debugger 
  factors.include?(num) || (factors.find{ |x| num % x == 0 }).nil?
end
