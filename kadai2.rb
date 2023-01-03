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

menu1 = Menu.new(name:"Phở", price:30000)
menu2 = Menu.new(name:"Bún chả", price:40000)
menu3 = Menu.new(name:"Bánh mì", price:20000)

menus = []
menus.push(menu1, menu2, menu3)

menus.each do |menu|
  menu.display
end