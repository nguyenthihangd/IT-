class Row
  attr_accessor :col1
  attr_accessor :col2
  attr_accessor :col3
  attr_accessor :col4
  attr_accessor :col5
  def initialize(row)
    self.col1 = rand(1..15)
    self.col2 = rand(16..30)
    self.col3 = rand(31..45)
    self.col4 = rand(46..60)
    self.col5 = rand(61..75)

    if row == 3
      self.col3 = " "
    end
  end
  def show()
    puts "#{col1.to_s.ljust(2)} | #{col2.to_s.ljust(2)} | #{col3.to_s.ljust(2)} | #{col4.to_s.ljust(2)} | #{col5.to_s.ljust(2)}"
  end
end

row1 = Row.new(1)
row2 = Row.new(2)
row3 = Row.new(3)    
row4 = Row.new(4)
row5 = Row.new(5)

puts "B  | I  | N  | G  | O"
matrix = [row1, row2, row3, row4, row5]
matrix.each {
  |row| row.show
}