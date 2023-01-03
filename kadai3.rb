class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end
  
  def get_total_price(count)
    total_price = price * count
    total_price -= 10000 if count >= 3
    "#{name} #{total_price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size

  def initialize(name:, price:, size:)
    super(name: name, price: price)
    self.size = size
  end
end

menu1 = Menu.new(name: 'Phở', price: 30000)

menu2 = Menu.new(name: 'Bún chả', price: 40000)

menu3 = Menu.new(name: 'Bánh mì', price: 20000)

drink1 = Drink.new(name: 'Trà', price: 5000, size: 'S')

drink2 = Drink.new(name: 'Trà', price: 10000, size: 'M')

menus = [menu1, menu2, menu3, drink1, drink2]

menus.each do |menu|
  if (menu.instance_of? Menu)
  puts "#{menu.name} #{menu.price}vnd"
  else puts "#{menu.name} #{menu.price}vnd (#{menu.size}サイズ)"
  end
end

