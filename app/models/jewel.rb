class Jewel < ApplicationRecord
  validates :ruby, numericality: {less_than_or_equal_to: 1}
  validates :diamond, numericality: {less_than_or_equal_to: 2}
  validates :emerald, numericality: {less_than_or_equal_to: 3}
  validates :sapphire, numericality: {less_than_or_equal_to: 4}
  validates :opal, numericality: {less_than_or_equal_to: 5}
  validates :gold, numericality: {less_than_or_equal_to: 4}
  validates :silver, numericality: {less_than_or_equal_to: 4}
  validates :red, numericality: {less_than_or_equal_to: 1}
  validates :black, numericality: {less_than_or_equal_to: 1}

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

    if n.between?(2 , 3) and operator == '+'
      jewels.diamond += 1
      jewels.save
    elsif n.between?(2 , 3) and operator == '-'
      jewels.diamond -= 1
      jewels.save
    end

    if n.between?(4 , 6) and operator == '+'
      jewels.emerald += 1
      jewels.save
    elsif n.between?(4 , 6) and operator == '-'
      jewels.emerald -= 1
      jewels.save
    end

    if n.between?(7 , 10) and operator == '+'
      jewels.sapphire += 1
      jewels.save
    elsif n.between?(7 , 10) and operator == '-'
      jewels.sapphire -= 1
      jewels.save
    end

    if n.between?(11 , 15) and operator == '+'
      jewels.opal += 1
      jewels.save
    elsif n.between?(11 , 15) and operator == '-'
      jewels.opal -= 1
      jewels.save
    end

    if n.between?(16 , 19) and operator == '+'
      jewels.gold += 1
      jewels.save
    elsif n.between?(16 , 19) and operator == '-'
      jewels.gold -= 1
      jewels.save
    end

    if n.between?(20 , 23) and operator == '+'
      jewels.silver += 1
      jewels.save
    elsif n.between?(20 , 23) and operator == '-'
      jewels.silver -= 1
      jewels.save
    end

    if n == 24 and operator == '+'
      jewels.red += 1
      jewels.save
    elsif n == 24 and operator == '-'
      jewels.red -= 1
      jewels.save
    end

    if n == 25 and operator == '+'
      jewels.black += 1
      jewels.save
    elsif n == 25 and operator == '-'
      jewels.black -= 1
      jewels.save
    end
  end
end
