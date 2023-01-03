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
menu1 = Menu.new(name:'Phở', price: 30_000)
menu2 = Menu.new(name:'Bún chả', price: 40_000)
menu3 = Menu.new(name:'Bánh mì', price: 20_000)
menus = [menu1,menu2,menu3]

menus.each do |menu|
  puts menu.show
end