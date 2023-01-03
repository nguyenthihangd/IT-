class Menu
  attr_accessor :name
 attr_accessor :price
  def initialize(menu)
    @menu = menu
  end

  def show
    @menu.each do |menu|
      puts "#{menu[:name]} #{menu[:price]}VND"
    end
  end
end

menu1 = {name: "Pho", price: 30000}
menu2 = {name: "BunCha", price: 40000}
menu3 = {name: "BanhMi", price: 20000}
menus = [menu1, menu2, menu3]

menu = Menu.new(menus)
menu.show