#!/usr/bin/ruby

class Fibonacci

  def initialize
    @this = 0
    @prev = 1

  end
  
  def next
    @this = @this + @prev
    @prev = @this - @prev
    @this
  end
end
