class Bingo 
  attr_accessor :rows
  def initialize
    row1=[rand(1..15),rand(16..30),rand(31..45),rand(46..60),rand(61..75)]
    row2=[rand(1..15),rand(16..30),rand(31..45),rand(46..60),rand(61..75)]
    row3=[rand(1..15),rand(16..30),0,rand(46..60),rand(61..75)]
    row4=[rand(1..15),rand(16..30),rand(31..45),rand(46..60),rand(61..75)]
    row5=[rand(1..15),rand(16..30),rand(31..45),rand(46..60),rand(61..75)]
    self.rows=[row1,row2,row3,row4,row5]
  end
  def display
    printf("%2c | %2c | %2c | %2s | %2c |\n" , 'B','I','N','G','O')
    self.rows.each do |row|
      row.each do |i|
        if i!=0 
          printf("%2d | " % i)
        else
          printf "   | "
        end
      end
      printf("\n")
    end
  end
end
bingo= Bingo.new
bingo.display