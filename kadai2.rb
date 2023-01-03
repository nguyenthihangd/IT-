class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def get_info
    puts "#{name} #{price}vnd"
  end
end

menus = [
  Menu.new('Pho', 30_000),
  Menu.new('Bun cha', 40_000),
  Menu.new('Banh mi', 20_000)
]

menus.each do |menu|
  menu.get_info
end
