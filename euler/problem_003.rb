# PROJECT EULER - PROBLEM 3

# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number
# 600851475143 ?

require 'lib/primefactor'

puts PrimeFactor.factor(600851475143).last
