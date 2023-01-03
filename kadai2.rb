class Menu
  def initialize(menu)
    @menu = menu
  end

  def show
    @menu.each do |menu|
      puts "#{menu[:name]} #{menu[:price]}円"
    end
  end
end

menu1 = {name: "カレー", price: 500}
menu2 = {name: "ラーメン", price: 400}
menu3 = {name: "ハンバーグ", price: 300}
menus = [menu1, menu2, menu3]

menu = Menu.new(menus)
menu.show
