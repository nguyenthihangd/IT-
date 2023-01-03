class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def get_total_price(quantity)
    total_price = price * quantity
    total_price -= 10_000 if quantity >= 3
    return "#{self.name} #{total_price}vnd"
  end
end

menu1 = Menu.new
menu1.name = 'Phở'
menu1.price = 30_000

puts menu1.get_total_price(3)
