module PrimeFactors

  def  generate(n)
    primes = Array.new

    candidate = 2
    while n > 1
      while n%candidate == 0
        primes.push(candidate)
        n /= candidate
      end
      candidate += 1
    end

    if n > 1
      primes.push(n)
    end
    
    return primes
  end

end
