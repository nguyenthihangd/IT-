class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name, price)
    self.name = name
    self.price = price
  end
  def show_data
    return "#{self.name} #{self.price}"
  end
end
  
class Drink < Menu
  attr_accessor :size
  # @override
  def initialize(name, price, size)
    super(name, price)
    self.size = size
  end
  # @override
  def show_data
    super + " (#{size}サイズ)"
  end
end

menu1 = Menu.new("Phở",30000)
menu2 = Menu.new("Bún chả",40000)
menu3 = Menu.new("Bánh mì",20000)
drink1 = Drink.new("Trà", 5000, "S")
drink2 = Drink.new("Trà", 5000, "M")

menus = Array[menu1, menu2, menu3, drink1, drink2]

menus.each {|el| puts el.show_data}