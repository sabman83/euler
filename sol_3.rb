require 'debugger'
require 'set'
PRIME_NUMBERS = [2]
def largest_prime_factor num
  #generate prime numbers on the fly
  curr_n = num
  #evaluate the curr_n till it is a prime number
  while (PRIME_NUMBERS.include?(curr_n) == false)
    
    #evaluate the number obtained by dividing curr_n with the largest prime number
    curr_n = curr_n/PRIME_NUMBERS.last if curr_n % PRIME_NUMBERS.last == 0
    
    #calculate the next prime number
    find_next_prime
 end
  PRIME_NUMBERS.last
end

def find_next_prime
  next_possible_prime = PRIME_NUMBERS.last + 1
  found = false
  while !found
    if (PRIME_NUMBERS.find {|num| next_possible_prime % num == 0}) == nil
      PRIME_NUMBERS.push next_possible_prime
      found = true
    else
      next_possible_prime += 1
    end
  end 
end
result = (largest_prime_factor(13195) == 29) ? 'success!' : 'fail'
puts result
puts largest_prime_factor 600851475143
