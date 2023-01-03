class Bingo
  attr_accessor :b
  attr_accessor :i
  attr_accessor :n
  attr_accessor :g
  attr_accessor :o
  def create_card
    self.b = (1..15).to_a.sample(5)
    self.i = (16..30).to_a.sample(5)
    self.n = (31..45).to_a.sample(5)
    self.g = (46..60).to_a.sample(5)
    self.o = (61..75).to_a.sample(5)
    self.n[2] = ''
  end
  
  def show_card
    puts ' ________________________'
    puts '|  B |  I |  N |  G |  O |'
    (1..5).each do |row|
      print '| '
      [b,i,n,g,o].each do |column|
        print column[row - 1].to_s.rjust(2)
        print ' | '
      end
      puts
    end
    puts ' ------------------------'
  end
end

bingo = Bingo.new
bingo.create_card
bingo.show_card


