def sum_of_even_fib
  prev = 1
  curr = 2
  sum = 0
  while curr < 4000000
   sum += curr if curr % 2 == 0
   temp = curr
   curr += prev
   prev = temp
  end
  puts sum
end
sum_of_even_fib
