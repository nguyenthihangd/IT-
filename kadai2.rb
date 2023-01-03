class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def initialize(name, price)
    self.name=name
    self.price=price
  end
  def show()
    puts "#{name} #{price}"
  end
end

menu1 = Menu.new("Pho", 30000)
menu2 = Menu.new("Bun cha", 40000)
menu3 = Menu.new("Banh my", 20000)
menus = Array([menu1, menu2, menu3])

menus.each {
  |menu| menu.show
}
