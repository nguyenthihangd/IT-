class Bingo
  attr_accessor :column_b
  attr_accessor :column_i
  attr_accessor :column_n
  attr_accessor :column_g
  attr_accessor :column_o
  attr_accessor :columns

  def initialize
    self.columns = [column_b, column_i, column_n, column_g, column_o]
    index = 0
    columns.each do |column|
      columns[index] = ((index * 15 + 1)..(index * 15 + 15)).to_a.sample(5)
      index = index + 1
    end
  end

  def print_bingo
    puts "  B |  I |  N |  G |  O "
    (0..(5 - 1)).each do |index|
      self.columns.each_with_index do |column, idx|
        if index != 2 || idx != 2
          print(" %.2d " % [column[index]])
          if idx != 4
            print "|"
          end
        else
          print "    |"
        end
      end
      print("\n")
    end
  end
end

bingo = Bingo.new

bingo.print_bingo