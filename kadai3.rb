class Menu
  attr_accessor :name
  attr_accessor :price
   def initialize(name, price)
     self.name = name
     self.price = price
   end
  def display_details()
      puts " #{self.name} - #{self.price}vnd"
  end
end
class Drink < Menu
  attr_accessor :size
  def initialize(name, price, size)
    super(name,price)
    self.size = size
  end
  def display_details()
      puts " #{self.name} - #{self.price}vnd (#{self.size})"
  end
end

menus = []
menu1=Menu.new("Phở",30000)
menus << menu1# đưa các món ăn vào mảng
menu2=Menu.new("Bún chả",40000)
menus << menu2# đưa các món ăn vào mảng
menu3=Menu.new("Bánh mì",20000)
menus << menu3# đưa các món ăn vào mảng

drink1 = Drink.new("Trà",5000,"Sサイズ")
menus << drink1  
drink2 = Drink.new("Trà",5000,"Mサイズ")
menus << drink2 
menus.each{|menu| 
  menu.display_details()}