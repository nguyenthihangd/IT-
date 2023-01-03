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

# --------------------------- 代入 ------------------------------
menu1 = Menu.new("Phở", 30_000)
menu2 = Menu.new("Bún chả", 40_000)
menu3 = Menu.new("Bánh mì", 20_000)

menus = Array[menu1, menu2, menu3]

# --------------------------- 実行 ------------------------------
menus.each {
  |menu| menu.show_data
}