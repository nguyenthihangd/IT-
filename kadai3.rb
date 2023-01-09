class Menu
  def initialize(name, price)
    @name = name
    @price = price
  end

  def display
    puts "#{@name} #{@price}vnd"
  end
end

class Drink < Menu 
  def initialize(name, price, size)
    super(name, price)
    @size = size
  end

  def display
    puts "#{@name} #{@price}vnd (Size #{@size})"
  end
end

# Define the menu items
menu1 = Menu.new('Cơm', 20_000)
menu2 = Menu.new('Thịt gà', 25_000)
menu3 = Menu.new('Bánh mì', 20_000)
menu4 = Drink.new('Trà', 5000, 'M')
menu5 = Drink.new('Trà', 1000, 'L')
# Define the array of menu items
menus = [menu1, menu2, menu3, menu4, menu5]

# Iterate through the menus array and display each menu item
menus.each do |menu|
  menu.display
end