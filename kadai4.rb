class Bingo
  attr_reader :colB, :colI, :colN, :colG, :colO

  def initialize
    @colB = (1..15).to_a.sample(5)
    @colI = (16..30).to_a.sample(5)
    @colN = (31..45).to_a.sample(5)
    @colG = (46..60).to_a.sample(5)
    @colO = (61..75).to_a.sample(5)
    @colN[2] = ""
  end

  def display
    puts "  B |  I |  N |  G |  O "
    (0..4).each do |i|
      puts " #{colB[i].to_s.rjust(2)} | #{colI[i].to_s.rjust(2)} | #{colN[i].to_s.rjust(2)} | #{colG[i].to_s.rjust(2)} | #{colO[i].to_s.rjust(2)}"
    end
  end
end

bingo = Bingo.new

bingo.display