# --------------------------- クラス ----------------------------
class Bingo
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

    # 真ん中を空(free)にする
    if row == 3
      self.col3 = " "
    end
  end

  def show_data
    puts "#{col1.to_s.rjust(2)} | #{col2.to_s.rjust(2)} | #{col3.to_s.rjust(2)} | #{col4.to_s.rjust(2)} | #{col5.to_s.rjust(2)}"
  end
end

# --------------------------- 代入 ------------------------------
row1 = Bingo.new(1)
row2 = Bingo.new(2)
row3 = Bingo.new(3)
row4 = Bingo.new(4)
row5 = Bingo.new(5)

matrix = [row1, row2, row3, row4, row5]

# --------------------------- 実行 ------------------------------
puts "#{"B".rjust(2)} | #{"I".rjust(2)} | #{"N".rjust(2)} | #{"G".rjust(2)} | #{"O".rjust(2)}"
matrix.each {
  |row| row.show_data
}