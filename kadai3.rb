class Menu
  attr_accessor :name
  attr_accessor :price
   def initialize(name, price)
     self.name=name
     self.price=price

   end
  def display_details()
      puts " #{self.name}  #{self.price} "
  end
end
class Drink < Menu
  attr_accessor :size
  def initialize(name, price,size)
    super(name,price)
    self.size =size
  end
def display_details()
      puts " #{self.name}  #{self.price} #{self.size}"
  end   
end
menu1=Menu.new("Phở","30000vnd")
menu2=Menu.new("Bún chả","40000vnd")
menu3=Menu.new("Bánh mì","20000vnd")
drink1=Drink.new("Trà","5000vnd","(Sサイズ)")
drink2=Drink.new("Trà","10000vnd","(Mサイズ)")
menus = [menu1, menu2, menu3, drink1, drink2]
menus.each{|menu| 
  menu.display_details()}