require 'rubygems'
require 'debugger'

def sum_of_multiples_below_n n,num_1,num_2
  t = Time.now
  sum = 0
  n.times do |num|
    sum += num if num % num_1 == 0 || num % num_2 == 0
  end
  print_time t,n  
  sum
end

def sum_of_multiples n, num_1, num_2
  return if num_1 > num_2
  t = Time.now
  sum = 0
  #assumes that num_1 is smaller than num_2
  x1 = num_1
  x2 = num_2

  while x1 < n && x2 < n
    while x1 < x2
      sum += x1
      x1 += num_1
    end
    sum += x2 unless x1 == x2
    x2 += num_2
  end

  while x1 < n
    sum += x1
    x1 += num_1
  end

  while x2 < n
    sum += x2
    x2 += num_2
  end
  
  print_time t,n
  sum
end

def print_time t,n
  puts "time taken for #{n} :" + ((Time.now.nsec - t.nsec)/1000).to_s + ' macro seconds'
end
