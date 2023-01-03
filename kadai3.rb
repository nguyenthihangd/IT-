class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name, price)
    self.name = name
    self.price = price
  end
  def display
    puts "%-10s %5d vnd" %[name,price]
  end
end
class Drink < Menu
  attr_accessor :size
  def initialize(name, price, size)
    super(name,price)
    self.size = size
  end
  def display
    puts "%-10s %5d vnd (%sサイズ)" %[name,price,size]
  end
end
menus = []
menus << menu1 = Menu.new("Phở",30000)
menus << menu2 = Menu.new("Bún chả",40000)
menus << menu3 = Menu.new("Bánh mì",20000)
menus << drink1 = Drink.new("Trà", 5000, "S")
menus << drink2 = Drink.new("Trà", 10000, "M")
menus.each do |menu|
  menu.display
end