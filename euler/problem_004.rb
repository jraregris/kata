# PROJECT EULER - PROBLEM 4

# A palindromic number reads the same both ways.
# The largest palindrome made from the product of
# two 2-digit numbers is 9009 = 91  99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def palin?(n)
  if n.to_s.reverse == n.to_s
    return true
  end
  false
end

pals = []

(100..999).to_a.reverse.each do |i| 
  (100..999).to_a.reverse.each do |j|
 

    if palin?(i*j)
      pals << i*j
    end
  end
end

puts pals.sort.last
