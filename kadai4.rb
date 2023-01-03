class Bingo
  def initialize
    @bingo = []
    @bingo << (1..15).to_a.shuffle.take(5)
    @bingo << (16..30).to_a.shuffle.take(5)
    @bingo << (31..45).to_a.shuffle.take(5)
    @bingo << (46..60).to_a.shuffle.take(5)
    @bingo << (61..75).to_a.shuffle.take(5)
    @bingo[2][2] = " "
    @bingo = @bingo.transpose
  end
  
  def show
    puts " B | I  | N  | G  | O  |"
    @bingo.each do |row|
      row.each do |col|
          printf("%2s | ", col.to_s)
      end
      puts
    end
  end
end

bingo = Bingo.new
bingo.show
