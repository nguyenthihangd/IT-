class Bingo
  attr_accessor :map

  def initialize
    row1=[rand(1..15),rand(16..30),rand(31..45),rand(46..60),rand(61..75)]
    row2=[rand(1..15),rand(16..30),rand(31..45),rand(46..60),rand(61..75)]
    row3=[rand(1..15),rand(16..30),'',rand(46..60),rand(61..75)]
    row4=[rand(1..15),rand(16..30),rand(31..45),rand(46..60),rand(61..75)]
    row5=[rand(1..15),rand(16..30),rand(31..45),rand(46..60),rand(61..75)]
    self.map=[row1,row2,row3,row4,row5]
  end
  def createBingoMap
    puts ' ________________________'
    puts '|  B |  I |  N |  G |  O |'
    (0..4).each do |row|
      print '| '
      map.each do |col|
        print col[row].to_s.rjust(2)
        print ' | '
      end
      puts
    end
    puts ' ------------------------'
  end
end
  
bingo = Bingo.new
bingo.createBingoMap