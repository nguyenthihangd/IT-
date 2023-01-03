class Doan
  attr_accessor :name
  attr_accessor :price
  def initialize(name,price)
    self.name=name
    self.price=price
  end

  def display_details()
    puts "#{self.name} #{self.price}vnd"
  end
end

class Drinks < Doan
  attr_accessor :size
  def initialize(name,price,size)
    super(name,price)
    self.size=size
  end
  def display_details()
    puts "#{name} #{price} (#{size}サイズ)"
  end
end

menu =[]
menu1 = Doan.new("Phở", 30000)
menu << menu1

menu2 = Doan.new("Bún chả", 40000)
menu << menu2

menu3 = Doan.new("Bánh mì", 20000)
menu <<menu3

drink1 = Drinks.new("Tra", 5000, "S")
menu << drink1

drink2 = Drinks.new("Tra", 10000, "M")
menu << drink2

menu.each {|doan| 
  doan.display_details()}
