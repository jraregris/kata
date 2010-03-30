class Yatzee
  def self.ones(dice)
    num(dice, 1)
  end

  def self.twos(dice)
    num(dice, 2)
  end

  def self.num(dice, n)
    sum = 0
    dice.each do |d|
      if d == n
        sum += n
      end
    end
    sum
  end

  def self.pair(n)
  end
end
