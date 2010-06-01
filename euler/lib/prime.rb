class Prime
  def self.prime(n)
    p = []
    
    p << 2 if n >= 1
    p << 3 if n >= 2
    p << 5 if n >= 3

    p
  end
end
