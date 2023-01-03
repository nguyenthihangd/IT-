class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def initialize(name, price)
    self.name=name
    self.price=price
  end
  def show()
    puts "#{name} #{price} vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(name, price, size)
    super(name, price)
    self.size = size
  end
  def show()
    puts "#{name} #{price} vnd (#{size} サイズ)"
  end
end

menu1 = Menu.new("Pho", 30000)
menu2 = Menu.new("Bun cha", 40000)
menu3 = Menu.new("Banh my", 20000)
drink1 = Drink.new("Tra", 5000, "S")
drink2 = Drink.new("Tra", 10000, "M")
menus = Array([menu1, menu2, menu3, drink1, drink2])

menus.each {
  |menu| menu.show
}
