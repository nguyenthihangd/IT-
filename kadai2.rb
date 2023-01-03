class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name, price)
    self.name = name
    self.price = price
  end
  def show_data
    puts "#{self.name} #{self.price}"
  end
end

menu1 = Menu.new("Phở",30000)
menu2 = Menu.new("Bún chả",40000)
menu3 = Menu.new("Bánh mì",20000)
menus = Array[menu1, menu2, menu3]

menus.each {|el| el.show_data}