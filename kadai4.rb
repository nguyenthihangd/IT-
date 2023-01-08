class Bingo
  attr_accessor :b_col
  attr_accessor :i_col
  attr_accessor :n_col
  attr_accessor :g_col
  attr_accessor :o_col
  
  def createCol
    self.b_col = (1..15).to_a.sample(5)
    self.i_col = (16..30).to_a.sample(5)
    self.n_col = (31..45).to_a.sample(5)
    self.n_col[2] = ' '
    self.g_col = (46..60).to_a.sample(5)
    self.o_col = (61..75).to_a.sample(5)
  end
  
  def createBingoCard
    puts ' ________________________'
    puts '|  B |  I |  N |  G |  O |'
    (1..5).each do |b_row|
      print '| '
      [b_col,i_col,n_col,g_col,o_col].each do |b_column|
        print b_column[b_row - 1].to_s.rjust(2)
        print ' | '
      end
      puts
    end
    puts ' ------------------------'
  end
end

bingo = Bingo.new
bingo.createCol
bingo.createBingoCard