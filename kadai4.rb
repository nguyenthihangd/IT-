ALIGN = 3
class Row
  attr_accessor :el1
  attr_accessor :el2
  attr_accessor :el3
  attr_accessor :el4
  attr_accessor :el5

  def initialize(row)
    self.el1 = rand(1..15)
    self.el2 = rand(16..30)
    self.el4 = rand(46..60)
    self.el5 = rand(61..75)

    if( row != 3)
      self.el3 = rand(31..45)
    end
  end

  def print
    puts "#{self.el1.to_s.center(ALIGN)}|#{self.el2.to_s.center(ALIGN)}|#{self.el3.to_s.center(ALIGN)}|#{self.el4.to_s.center(ALIGN)}|#{self.el5.to_s.center(ALIGN)}"
  end
end

row1 = Row.new(1)
row2 = Row.new(2)
row3 = Row.new(3)
row4 = Row.new(4)
row5 = Row.new(5)

bingo = [row1, row2, row3, row4, row5]

puts "B".center(ALIGN)+"|"+"I".center(ALIGN)+"|"+"N".center(ALIGN)+"|"+"G".center(ALIGN)+"|"+"O".center(ALIGN)

bingo.each { |row|
  row.print
}





