class Bingo
  attr_accessor :bingo_board, :letters
  def initialize
    
    @letters = ["B","I","N","G","O"]
    
    @bingo_board = [
      5.times.map{rand(1..15)}, 
      5.times.map{rand(16..30)}, 
      5.times.map{rand(31..45)}, 
      5.times.map{rand(46..60)}, 
      5.times.map{rand(61..75)}
    ].transpose

    # 真ん中を空(free)にする
    bingo_board[2][2] = " "
    
    puts letters.map { |i| i.to_s.rjust(2) }.join(' | ')
    
    puts bingo_board.map { |a| 
      a.map { |i| i.to_s.rjust(2) }.join(' | ')
    }
    
  end
end


my_board = Bingo.new