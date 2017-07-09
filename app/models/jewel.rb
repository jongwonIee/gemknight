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
      black: 1,
    )
  end

  def self.deal(n)
    jewels = Jewel.find(n)
  end
end
