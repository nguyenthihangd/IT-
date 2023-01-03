class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name, price)
    self.name = name
    self.price = price
  end
  
  def info
    return "#{self.name} #{self.price} vnd"
  end
end

menu1 = Menu.new("Phở", 30000)
menu2 = Menu.new("Bún chả", 40000)
menu3 = Menu.new("Bánh mì", 20000)

menus = [menu1, menu2, menu3]

class Drink < Menu
  attr_accessor :size
  def initialize(name, price, size)
    super(name, price)
    self.size = size
  end

  def info
    return "#{self.name} #{self.price} vnd (#{self.size}サイズ)"
  end
end

drink1 = Drink.new("Trà", 5000, 'S')
drink2 = Drink.new("Trà", 10000, 'M')

menus += [drink1, drink2]

menus.each do |menu|
  puts menu.info
end 