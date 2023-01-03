class Bingo
  attr_accessor :num_base

  def initialize
    @num_base = []
  end

  def custom_rand(start, finish, is_end = false)
    num = rand(start...finish)
    num = rand(start...finish) while num_base.include? num if num_base.length != 0
    num_base.push(num)
    print num < 10 ? "  #{num} " : " #{num} "
    print '|' unless is_end
  end

  def create_board
    puts '  B |  I |  N |  G |  O '
    (1...6).each do |i|
      custom_rand(1, 16)
      custom_rand(16, 31)
      if i == 3
        print '    |'
      else
        custom_rand(31, 46)
      end
      custom_rand(46, 61)
      custom_rand(61, 76, true)
      puts
    end
  end
end

bingo = Bingo.new
bingo.create_board
