class Menu
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

# Define menu items
menu1 = Menu.new("Phở", "30,000vnd")
menu2 = Menu.new("Bún chả", "40,000vnd")
menu3 = Menu.new("Bánh mì", "20,000vnd")

# Put menu items in an array
menus = [menu1, menu2, menu3]

# Iterate over the menus and print them out
menus.each do |menu|
  puts "#{menu.name} #{menu.price}"
end
