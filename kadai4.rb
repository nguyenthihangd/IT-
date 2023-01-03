class Bingo
  attr_accessor :row
  attr_accessor :rows
  def initialize
    self.row=[]
    self.rows=[]
    (1..5).each do |i|
      self.row = [rand(1..15),rand(16..30),rand(31..45),rand(46..60),rand(61..75)]
      if i == 3
      self.row = [rand(1..15),rand(16..30),"",rand(46..60),rand(61..75)]
      end
      self.rows.push(row)
    end
  end
  def show_bingo
    printf("%3s|%3s|%3s|%3s|%3s|\n", "B", "I", "N", "G", "O")
  rows.each do |row|
    printf("%3s|%3s|%3s|%3s|%3s|\n", row[0],row[1],row[2],row[3],row[4])
  end
  end
end

bingo1 = Bingo.new
bingo1.show_bingo