class Jewel < ApplicationRecord
  def self.init
    Jewel.create(
      ruby: 1,
      diamond: 2,
      emerald: 3,
      sapphire: 4,
      opal: 5,
      gold: 4,
      silver: 4,
      red: 1,
      black: 1
    )
  end

  def self.deal(id)
    (1..25).to_a.sample(10).each do |n|
      Jewel.calculate(id, n, '-')
    end
  end

  def self.calculate(id, n, operator)
    jewels = Jewel.find(id)
    if n == 1 and operator == '+'
      jewels.ruby += 1
      jewels.save
    elsif n == 1 and operator == '-'
      jewels.ruby -= 1
      jewels.save
    end
  end
end
