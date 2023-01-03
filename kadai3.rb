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
class Drink < Menu
  attr_accessor :size
  def initialize(name,price,size)
    super(name,price)
    self.size=size
  end
  def get_total_price
    return "#{name} #{price} vnd (#{size} サイズ)"
  end
end

menu1 = Menu.new("Phở", 30_000);
menu2 = Menu.new("Bún chả", 40_000);
menu3 = Menu.new("Bánh mì", 20_000);
drink1= Drink.new("Trà",5000,"S");
drink2= Drink.new("Trà",10000,"M");
puts menu1.get_total_price
puts menu2.get_total_price
puts menu3.get_total_price
puts drink1.get_total_price
puts drink2.get_total_price

# menu1に対してget_total_priceメソッドを呼び出してください
