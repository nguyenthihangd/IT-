class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name, price)
    self.name = name
    self.price = price
  end

  def display_menu
    puts "#{@name} #{@price} vnd"
  end
end
class Drink < Menu
  attr_accessor :size
  def initialize(name, price, size)
    self.name = name
    self.price = price
    self.size = size
  end
  def display_menu
    puts "#{@name} #{@price} vnd(#{@size})"
  end
end
menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mì', 20_000)
menu4 = Drink.new('Trà', 20_000, "Sサイズ")
menu5 = Drink.new('Trà', 40_000, "Mサイズ")
  
menus = [menu1, menu2, menu3, menu4, menu5]

menus.each do |menu|
  menu.display_menu
end