class Menu
 attr_accessor :name
 attr_accessor :price
 def initialize(name, price)
  self.name = name
  self.price = price
 end
  def display_details()
    puts " #{self.name} - #{self.price} vnd"
  end
end
class Drink < Menu
 attr_accessor :size
 def initialize(name, price, size)
  super(name,price)
  self.size = size
 end
  def display_details()
    puts " #{self.name} - #{self.price} vnd #{self.size}"
  end
end
menu = []
menu1=Menu.new("Phở","20000")
menu << menu1# đưa các món ăn vào mảng
menu2=Menu.new("Cháo","15000")
menu << menu2# đưa các món ăn vào mảng
menu3=Menu.new("Cơm","10000")
menu << menu3# đưa các món ăn vào mảng
drink1=Drink.new("Tra","5000","S")
menu << drink1
drink2=Drink.new("Tra","10000","M")
menu << drink2
menu.each{|doan| 
  doan.display_details()}