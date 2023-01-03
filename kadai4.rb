class Bingo
  def generate_rand(from_to)
    num = rand(from_to)
    if num < 10
      return "#{num} "
    else
      return num
    end
  end

  def create_row(row)
    row == 2 ? " #{generate_rand(1..15)} | #{generate_rand(16..30)} |    | #{generate_rand(46..60)} | #{generate_rand(61..75)} " : " #{generate_rand(1..15)} | #{generate_rand(16..30)} | #{generate_rand(31..45)} | #{generate_rand(46..60)} | #{generate_rand(61..75)} "
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