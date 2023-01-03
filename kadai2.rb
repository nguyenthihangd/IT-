class Menu 
  attr_accessor  :name
  attr_accessor  :price
end

menu1 = Menu.new
menu1.name = "Pho"
menu1.price = "10_000"

menu2 = Menu.new
menu2.name = "Bun cha"
menu2.price = "20_000"

menu3 = Menu.new
menu3.name = "Bun dau"
menu3.price = "30_000"

menus = [menu1, menu2, menu3]

count = 0
while count < menus.length 
  print "#{menus[count].name} #{menus[count].price}\n"
  count += 1
end




