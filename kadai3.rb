# --------------------------- クラス ----------------------------
class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name, price)
    self.name = name
    self.price = price
  end

  def show_data
    puts "#{self.name} #{self.price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size

  def initialize(name, price, size)
    super(name, price)
    self.size = size
  end
  
  def show_data
    puts "#{self.name} #{self.price} vnd (#{self.size}サイズ)"
  end
end

# --------------------------- 代入 ------------------------------
menu1 = Menu.new("Phở", 30_000)
menu2 = Menu.new("Bún chả", 40_000)
menu3 = Menu.new("Bánh mì", 20_000)

drink1 = Drink.new("Trà", 5_000, "S")
drink2 = Drink.new("Trà", 10_000, "M")

menus = [menu1, menu2, menu3, drink1, drink2]

# --------------------------- 実行 ------------------------------
menus.each {
  |menu| menu.show_data
}