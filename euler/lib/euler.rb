$: << File.join(File.dirname(__FILE__), "/.")
require 'fibonacci'
require 'prime'

class Euler
  def self.fibonacci
    Fibonacci.new
  end

  def self.palin?(n)
    if n.to_s.reverse == n.to_s
      return true
    end
    false
  end

  def self.prime(n)
    Prime.prime(n)
  end
end
