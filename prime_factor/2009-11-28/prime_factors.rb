module PrimeFactors

  def  generate(n)
    primes = Array.new

    if n > 1
      primes.push(n)
    end

    return primes
  end

end
