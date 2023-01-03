class Menu
attr_accessor :name
attr_accessor :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end
  def show_menu
       return "#{self.name}: #{self.price} (vnd)"
  end
end

class Drink < Menu
attr_accessor :size

def initialize(name:, price:, size:)
  super(name: name, price: price)
    self.size = size
  end
  def show_menu
       return "#{self.name}: #{self.price} (vnd) (#{self.size}サイズ)"
  end
end

menu1 = Menu.new(name:"Pho",price: 30000)
menu2 = Menu.new(name:"Chao",price: 35000)
menu3 = Menu.new(name:"Bun",price: 25000)
drink1 = Drink.new(name:"Tra", price: 50000, size:"M")
drink2 = Drink.new(name:"Tra", price: 55000, size:"L")
menus = [menu1,menu2,menu3,drink1,drink2]

menus.each do |menu|
  puts menu.show_menu
end