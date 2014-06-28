require 'rubygems'
require 'debugger'

# return the sum of all multiples of <2 or 5 below n
def get_sum n,num1,num2
  t = Time.now
  sum = 0
  n.times do |num|
    sum += num if num % num1 == 0 || num % num2 == 0
  end
  print_time t,n  
  sum
end

def get_sum_v2 n, num1, num2
  t = Time.now
  sum = 0 
  num1_gm = get_greatest_multiple n, num1
  num2_gm = get_greatest_multiple n, num2
  num_to_sum = Set.new
  while num1_gm >=1 || num2_gm >=1
    num_to_sum.merge [num1_gm,num2_gm]
    num1_gm -= num1 unless num1_gm <=0
    num2_gm -= num2 unless num2_gm <=0 
  end
  sum = num_to_sum.inject(0){|acc,num| acc + num}
  print_time t,n
  sum
end

def get_sum_v3 n, num1, num2
  t = Time.now
  sum = 0
  #assumes that num1 is smaller than num2
  x1 = num1
  x2 = num2

  while x1 < n && x2 < n
    while x1 < x2
      sum += x1
      x1 += num1
    end
    sum += x2 unless x1 == x2
    x2 += num2
  end

  while x1 < n
    sum += x1
    x1 += num1
  end

  while x2 < n
    sum += x2
    x2 += num2
  end
  
  print_time t,n
  sum
end

def get_greatest_multiple n, divisor
 result = 0
 (n-1).downto(1) do |num|
   if num % divisor == 0
     return num
   end
 end
end

def print_time t,n
  puts "time taken for #{n} :" + ((Time.now.nsec - t.nsec)/1000).to_s + ' macro seconds'
end

sum = get_sum(10,3,5)
result = (sum == 23) ? 'success!' : 'fail! Expected 23 instead got ' + sum.to_s
puts result

sum = get_sum(1000,3,5)
result = (sum == 233168) ? 'success!' : 'fail! Expected  233168 instead got ' + sum.to_s
puts result

sum = get_sum_v2(10,3,5)
result = (sum == 23) ? 'success!' : 'fail! Expected 23 instead got ' + sum.to_s
puts result

sum = get_sum_v2(1000,3,5)
result = (sum == 233168) ? 'success!' : 'fail! Expected  233168 instead got ' + sum.to_s
puts result


sum = get_sum_v3(10,3,5)
result = (sum == 23) ? 'success!' : 'fail! Expected 23 instead got ' + sum.to_s
puts result

sum = get_sum_v3(1000,3,5)
result = (sum == 233168) ? 'success!' : 'fail! Expected  233168 instead got ' + sum.to_s
puts result
