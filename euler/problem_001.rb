#!/usr/bin/ruby

# PROJECT EULER - PROBLEM 1

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.


def divides_on_three_or_five(n)
  if n%3 == 0 || n%5 == 0
    return true
  end
  false
end


sum = 0

(0..999).each{|n|
  if divides_on_three_or_five(n)
    sum = sum+n
  end
}

puts sum
