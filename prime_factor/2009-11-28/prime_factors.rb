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

    return primes
  end

end
