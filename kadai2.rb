class Menu
  def initialize(name, price)
    @name, @price = name , price
  end

  def display_menu
    puts "#{@name} #{@price}vnd"
  end
end

menu1 = Menu.new('Phở', 30_000)
menu2 = Menu.new('Bún chả', 40_000)
menu3 = Menu.new('Bánh mì', 20_000)

menus = [menu1, menu2, menu3]

menus.each do |menu|
  menu.display_menu
end