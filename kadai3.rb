class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name:,price:)
    @name = name
    @price = price
  end
  def show
     "#{@name} #{@price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name:,price:,size:)
    super(name:name, price:price)
    @size  = size
  end
  def show
    "#{@name} #{@price}vnd #{@size}サイズ"
  end
end
menu1 = Menu.new(name:'Phở', price: 30_000)
menu2 = Menu.new(name:'Bún chả', price: 40_000)
menu3 = Menu.new(name:'Bánh mì', price: 20_000)
drink1 = Drink.new(name:'Trà', price: 5_000, size:"S")
drink2 = Drink.new(name:'Trà', price: 10_000, size:"M")

menus = [menu1,menu2,menu3,drink1,drink2]
menus.each do |menu|
  puts menu.show
end