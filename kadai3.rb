class Menu
  def initialize(name, price)
    @name = name
    @price = price
  end
  
  def show
    puts "#{@name} #{@price}円"
  end
end

class Drink < Menu
  def initialize(name, price)
    super(name, price)
    @name, @size = name.split("(")
    @size = @size.delete(")")
  end
  
  def show
    puts "#{@name} #{@price}円 (#{@size})"
  end
end

menu1 = Menu.new("ピザ", 800)
menu2 = Menu.new("すし", 1000) 
menu3 = Drink.new("コーラ(Sサイズ)", 300)
menu4 = Drink.new("コーラ(Mサイズ)", 400)
menu5 = Drink.new("コーラ(Lサイズ)", 500)

menus = [menu1, menu2, menu3, menu4, menu5]
menus.each do |menu|                                                                             menu.show
end
