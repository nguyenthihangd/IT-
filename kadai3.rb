class Menu 
  attr_accessor  :name
  attr_accessor  :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end
end

menu1 = Menu.new(name: "Pho", price:"10_000")

menu2 = Menu.new(name: "Bun cha", price: "20_000")

menu3 = Menu.new(name: "Bun dau", price: "30_000")

class Drink < Menu 
  attr_accessor :size
  def initialize (name:, price:, size:)
    super(name: name, price: price)
    self.size = size
  end
end

drink1 = Drink.new(name:"Tra", price:"5000" , size: "Sサイズ" );
drink2 = Drink.new(name:"Tra", price:"10000" , size: "Mサイズ");

menus = [menu1, menu2, menu3, drink1, drink2]

# count = 0
# while count < menus.length 
#   if menus[count].instance_of? Menu
#     print "#{menus[count].name} #{menus[count].price}\n"
#   else 
#     print "#{menus[count].name} #{menus[count].price} #{menus[count].size}\n"
#   end
#   count += 1
# end

menus.each do |menu|
  if menu.instance_of? Menu
    print "#{menu.name} #{menu.price}\n"
  else 
    print "#{menu.name} #{menu.price} #{menu.size}\n"
  end
end




