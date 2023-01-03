class Menu
   attr_accessor :name
    attr_accessor :price
  def initialize(name:, price:)
      self.name = name
      self.price = price
  end

  def show
    
      puts "#{self.name} #{self.price} VND"
    
  end
end

class Drink < Menu
  attr_accessor :size
   def initialize(name:,price:, size:)
     super(name:name,price:price)
     self.size = size
  
  end
  
    
   
    def show
    
     puts "#{self.name} #{self.price} VND #{self.size}"
    
  end
  end


menu1 =Menu.new(name: "Pho", price: 30000) 
menu2 = Menu.new(name: "BunCha", price: 40000)
menu3 =Menu.new(name: "BanhMy", price: 20000) 
drink1 = Drink.new(name: "Tra", price: 5000, size:"S サイズ")
drink2 = Drink.new(name: "Tra", price: 10000, size:"M サイズ")
menus = [menu1, menu2, menu3, drink1, drink2]

# menu = Menu.new(menus)
# menu.show

menus.each do |menu| 
  menu.show
end
