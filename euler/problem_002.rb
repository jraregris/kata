#!/usr/bin/ruby

# PROJECT EULER - PROBLEM 2
#
# Each new term in the Fibonacci sequence is
# generated by adding the previous two terms.
# By starting with 1 and 2, the first 10 terms
# will be:
#
#   1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# Find the sum of all the even-valued terms in
# the sequence which do not exceed four million.

require "lib/fibonacci.rb"

sum = 0

seq = Fibonacci.new

while (i = seq.next)<4000000
  if i%2 == 0
    sum = sum + i
  end
end

puts sum
