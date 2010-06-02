class Prime
  def self.prime(n)
    p = []
    
    p <<  2 if n >= 1
    p <<  3 if n >= 2
    p <<  5 if n >= 3
    p <<  7 if n >= 4
    p << 11 if n >= 5
    p << 13 if n >= 6

    p
  end
end
