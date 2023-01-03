class RandNum
  attr_accessor :first, :last, :blank, :enter
  def initialize(first, last, blank, enter)
    @first = first
    @last = last
    @blank = blank
    @enter = enter
  end
  def gen_num
    num = rand(@first..@last)
    print " #{num < 10 ? " " : ""}#{blank ? "  " : num} #{enter ? "\n" : "|"}"
  end
end

i = 0
numbers = Array.new()
while i < 5 
  i+=1
  numbers.push(RandNum.new(1,15,false,false))
  numbers.push(RandNum.new(16,30,false,false))
  numbers.push(RandNum.new(31,45,i==3,false))
  numbers.push(RandNum.new(46,60,false,false))
  numbers.push(RandNum.new(61,75,false,true))
end
puts "  B |  I |  N |  G |  O"
numbers.each{|number|
  number.gen_num
}