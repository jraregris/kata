class Prime
  def self.prime(n)
    p = []
    while(p.size<n) do
      if p == []
        p << 2
      else
        p << (p.last..p.last*2).find { |i| !p.find { |j| i%j == 0 }}
      end
    end
    p
  end
end
