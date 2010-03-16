require 'test/unit'
require "fb"

class FizzBuzzTest < Test::Unit::TestCase
  def test_that_1_returns_1
    assert "1" ==  FizzBuzz.fb(1)
    assert "1" !=  FizzBuzz.fb(2)
  end  
end
