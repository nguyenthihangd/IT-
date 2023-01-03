class Menu
  attr_accessor :name, :price

  def initialize(name, price)
    self.name = name
    self.price = price
  end
end


menu1 = Menu.new("Phở", "30,000vnd")
menu2 = Menu.new("Bún chả", "40,000vnd")
menu3 = Menu.new("Bánh mì", "20,000vnd")


menus = [menu1, menu2, menu3]


menus.each do |menu|
  puts "#{menu.name} #{menu.price}"
end
