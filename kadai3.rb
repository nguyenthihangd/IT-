class Menu
  def initialize(name, price)
    @name,@price = name , price
  end

  def display
    puts "#{@name} #{@price}vnd"
  end
end


class Drink < Menu
  def initialize(name,price,size)
    super(name,price)
    @size = size
  end

  def display
  puts "#{@name} #{@price}vnd(Size #{@size})"
  end
end
# Define the menu items . 
menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mì', 20_000)
menu4 = Drink.new('Trà đào',30_000,'L')
menu5 = Drink.new('Trà đào',20_000,'M')
# Define the array of menu items
menus = [menu1, menu2, menu3,menu4,menu5]

# Iterate through the menus array and display each menu item
menus.each do |menu|
  menu.display
end