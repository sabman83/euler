# return the sum of all multiples of 3 or 5 below n
def get_sum n
  t = Time.now
  sum = 0
  n.times do |num|
    sum += num if num % 3 == 0 || num % 5 == 0
  end
  puts "time taken for #{n} " + ((Time.now - t) * 1000).to_s
  sum
end
sum = get_sum(10)
result = (sum == 23) ? 'success!' : 'fail! Expected 23 instead got ' + sum.to_s
puts result

sum = get_sum(1000)
result = (sum == 233168) ? 'success!' : 'fail! Expected 23 instead got ' + sum.to_s
puts result
