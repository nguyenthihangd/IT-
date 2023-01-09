class Menu
  def initialize(name, price)
    @name,@price = name , price
  end
  def display
    puts "#{@name} #{@price}vnd"
  end
end
class Drink < Menu
  def initialize(name, size, price)
    @name,@size,@price = name, size, price
  end
  def display
    puts "#{@name} #{@size} #{@price}vnđ"
  end

end
# Define the menu items . 
menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mì', 20_000)
drink1 = Drink.new('Trà','S', 5000)
drink2 = Drink.new('Trà', 'M', 10_000)

# Define the array of menu items
menus = [menu1, menu2, menu3, drink1, drink2]
menus.each do |menu|
  menu.display
end

