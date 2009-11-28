#!/usr/bin/ruby

# based on uncle bobs prime factor for java

require 'test/unit'
require 'prime_factors'

class PrimeFactorsTest < Test::Unit::TestCase

  include PrimeFactors

  def list(*ns)
    a = Array.new
    ns.each do |n|
      a.push(n)
    end
    return a
  end

  def passert(n, m)
    assert list(n) == generate(m)
  end

  def test_one
   assert list == generate(1)
  end

  def test_two
    passert(2,2)
  end

  def test_three
    passert(3,3)
  end

  def test_four
    assert list(2,2) == generate(4)
  end

  def test_six
    assert list(2,3) == generate(6)
  end

  def test_eight
    assert list(2,2,2) == generate(8)
  end
end
