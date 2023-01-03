class Bingo
  attr_accessor :row
  attr_accessor :column
  def initialize(row:, column:)
    self.row = row
    self.column = column
  end
  def render_bingo
    bingoSize = row*column
    bCol = get_random(1)
    iCol = get_random(2)
    nCol = get_random(3)
    nCol[3] = "  "
    gCol = get_random(4)
    oCol = get_random(5)
    (0..row-1).each do |i|
        puts "| #{bCol[i]} | #{iCol[i]} | #{nCol[i]} | #{gCol[i]} | #{oCol[i]} |"
    end
  end
  private
  def get_random(times)
    values = []
    case times
    when 1
      values << " B"
    when 2
      values << " I"
    when 3
      values << " N"
    when 4
      values << " G"
    when 5
      values << " O"
    else
      puts "Bingo"
    end
    i = 1
    while i < row
      temp = rand((15*times-14..15*times))
      temp = temp.to_s
      if temp.length < 2
        temp = " " + temp
      end
      if values.include?(temp)
        i -= 1
      else
        values << temp
      end
      i += 1
    end
    return values
  end
end
bingo = Bingo.new(row: 6, column: 5)
bingo.render_bingo