class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def get_total_price(count)
    total_price = count * price
    count >= 3 && total_price -= 10_000
    "#{name} #{total_price}vnd"
  end
end

menu1 = Menu.new('Pho', 30_000)
puts(menu1.get_total_price(gets.to_i))
