class Bingo
  def initialize
    @bingo_card = [];
  end

  def create_card
    @bingo_card[0] = (1..15).to_a.sample(5)
    @bingo_card[1] = (16..30).to_a.sample(5)
    @bingo_card[2] = (31..45).to_a.sample(5)
    @bingo_card[3] = (46..60).to_a.sample(5)
    @bingo_card[4] = (61..75).to_a.sample(5)
    @bingo_card[2][2] = ''
  end

  def show_card
    puts '________________________'
    puts '| B  | I  | N  | G  | O  |'
    (1..5).each do |row|
      print '| '
      @bingo_card.each do |column|
        print column[row - 1].to_s.rjust(2)
        print ' | '
      end
      puts
    end
    puts '--------------------------'
  end
end

# ここから処理を書く
bingo = Bingo.new
bingo.create_card
bingo.show_card