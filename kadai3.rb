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

class Drink < Menu
  attr_accessor :size
  def initialize(name, price, size)
    super(name, price)
    @size = size
  end

  def get_info
    puts "#{name} #{price}vnd (#{size})"
  end
end

menus = [
  Menu.new('Pho', 30_000),
  Menu.new('Bun cha', 40_000),
  Menu.new('Banh mi', 20_000),
  Drink.new('Tra', 5000, 'Sサイズ'),
  Drink.new('Tra', 10_000, 'Mサイズ')
]

menus.each do |menu|
  menu.get_info
end
