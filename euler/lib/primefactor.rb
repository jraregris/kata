class PrimeFactor
  def self.factor(n, factors=[])
    return factors if n == 1
    new_factor = (2..n).find {|f| n % f == 0}
    PrimeFactor.factor(n/new_factor, factors + [new_factor])
  end
end
