class Menu
  attr_reader :name
  attr_reader :price

  def initialize(name:, price:)
    @name = name
    @price = price
  end

  def display
    puts "#{self.name} #{self.price}vnd"
  end
end

class Drink < Menu
  attr_reader :size

  def initialize(name:, price:, size:)
    super(name:name, price:price)
    @size = size
  end

  def display
    puts "#{self.name} #{self.price}vnd #{self.size}"
  end
end

menu1 = Menu.new(name:"Phở", price:30000)
menu2 = Menu.new(name:"Bún chả", price:40000)
menu3 = Menu.new(name:"Bánh mì", price:20000)
drink1 = Drink.new(name:"Trà", price:5000, size:"Sサイズ")
drink2= Drink.new(name:"Trà", price:10000, size:"Mサイズ")
menus = []
menus.push(menu1, menu2, menu3, drink1, drink2)

menus.each do |menu|
  menu.display
end