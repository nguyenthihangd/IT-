class Menu
  attr_accessor :name, :price

  def initialize(name, price)
    self.name = name
    self.price = price
  end
end


menu1 = Menu.new("Phở", 300000)
menu2 = Menu.new("Bún chả", 400000)
menu3 = Menu.new("Bánh mì", 200000)


menus = [menu1, menu2, menu3]


menus.each do |menu|
  puts "#{menu.name} #{menu.price}vnd"
end
