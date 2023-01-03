class Menu
  attr_accessor :name, :price
  def initialize(name, price)
    self.name = name
    self.price = price
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name, price, size)
    super(name, price)
    self.size = size  
  end
end

drink1 = Drink.new("Trà",5000,"S")
drink2 = Drink.new("Trà", 10000,"M")
menu1 = Menu.new("Phở", 30000)
menu2 = Menu.new("Bún chả", 40000)
menu3 = Menu.new("Bánh mì", 20000)

menus = [menu1, menu2, menu3,drink1,drink2]

menus.each do |menu|
  if menu.is_a?(Drink)
    puts "#{menu.name} #{menu.price}vnd (#{menu.size}サイズ)"
  else
    puts "#{menu.name} #{menu.price}vnd"
  end
end

