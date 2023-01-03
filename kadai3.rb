class Menu
 attr_accessor :name
 attr_accessor :price

 def initialize(name:, price:)
    self.name = name
    self.price = price
 end

  def display
    puts "#{name} #{price}vnd "
  end
end

class Drink < Menu
    attr_accessor :size
    def initialize(name:, price:, size:)
        super(name: name, price: price)
        self.size = size
    end
  
  def display
    puts "#{name} #{price}vnd #{size}"
  end
end
menu1 = Menu.new(name: "Phở", price: 30000)
menu2 = Menu.new(name: "Bún chả", price: 40000)
menu3 = Menu.new(name: "Bánh mì", price: 20000)

drink1 = Drink.new(name: "Trà", price: 5000, size: "Sサイズ")
drink2 = Drink.new(name: "Trà", price: 10000, size: "Mサイズ")

menus = [menu1, menu2, menu3, drink1, drink2]
# count = 0
# while count < menus.length
#     if menus[count].instance_of? Menu
#         puts "#{menus[count].name} #{menus[count].price}vnd "
#     else
#         puts "#{menus[count].name} #{menus[count].price}vnd #{menus[count].size}"
        
#     end
#     count += 1
# end

menus.each do |menu|
  menu.display
end