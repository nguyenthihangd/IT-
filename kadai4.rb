class Bingo
  def create_row(row)
    row == 2 ? " #{rand(1..15).to_s.ljust(2)} | #{rand(16..30).to_s.ljust(2)} |    | #{rand(46..60).to_s.ljust(2)} | #{rand(61..75).to_s.ljust(2)} " : " #{rand(1..15).to_s.ljust(2)} | #{rand(16..30).to_s.ljust(2)} | #{rand(31..45).to_s.ljust(2)} | #{rand(46..60).to_s.ljust(2)} | #{rand(61..75).to_s.ljust(2)} "
  end

  def print_board
    puts " B  | I  | N  | G  | O  "
    5.times do |i|
      puts create_row(i)
    end
  end

end

bingo = Bingo.new
bingo.print_board