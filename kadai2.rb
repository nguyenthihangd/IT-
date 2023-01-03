class Menu
  attr_accessor :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

menu1 = Menu.new("Phở", 30000)
menu2 = Menu.new("Bún chả", 40000)
menu3 = Menu.new("Bánh mì", 20000)
menus = [menu1, menu2, menu3]

menus.each { |menu|
  puts "#{menu.name} #{menu.price}vnd"
}