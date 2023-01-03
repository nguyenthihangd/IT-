class Bingo 
  attr_accessor :card
  def initialize
    self.card = []
  end
  def create_card
    self.card[0]=(1..15).to_a.sample(5)
    self.card[1]=(16..30).to_a.sample(5)
    self.card[2]=(31..45).to_a.sample(5)
    self.card[3]=(46..60).to_a.sample(5)
    self.card[4]=(61..75).to_a.sample(5)
    self.card[2][2]=""
  end
  def show_card
    puts '--------------------------'
    puts '| B  | I  | N  | G  | O  |'
    (0..4).each do |row|
      print '| '
      card.each do |column|
        print column[row].to_s.center(2)
        print ' | '
      end
      puts
    end
    puts '--------------------------'
  end
end

card=Bingo.new
card.create_card
card.show_card