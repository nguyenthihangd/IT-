class Menu
  attr_accessor :name
  attr_accessor :price
  # get_total_priceメソッドを定義してください
  def initialize(name,price)
    self.name=name;
    self.price=price
  end
  def get_total_price
    return "#{name} #{price}vnd"
  end
end

menu1 = Menu.new("Phở", 30_000);
menu2 = Menu.new("Bún chả", 40_000);
menu3 = Menu.new("Bánh mì", 20_000);

puts menu1.get_total_price
puts menu2.get_total_price
puts menu3.get_total_price

# menu1に対してget_total_priceメソッドを呼び出してください
