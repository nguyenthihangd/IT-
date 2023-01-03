class Menu
 attr_accessor :name
 attr_accessor :price
  def initialize(name, price)
    self.name = name
    self.price = price
  end
end

menus = []
  
menus << menu1 = Menu.new("Phở",30000)
menus << menu2 = Menu.new("Bún chả",40000)
menus << menu3 = Menu.new("Bánh mì",20000)

menus.each do |menu|
  puts "#{menu.name.ljust(10)} #{menu.price}vnd"
end