module PrimeFactors

  def  generate(n)
    primes = Array.new

    if n > 1
      if n%2 == 0
        primes.push(2)
        n /= 2
      end
      if n > 1
        primes.push(n)
      end
    end

    return primes
  end

end
